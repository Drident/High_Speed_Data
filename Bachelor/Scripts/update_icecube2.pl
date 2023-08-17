#!/usr/bin/perl
# filename:          update_icecube2.pl
# created by:        Corthay Francois & Zahno Silvan & Amand Axel
#
#-------------------------------------------------------------------------------
#
# Description:
#   Updates the file references in the .project Lattice project file
#   and launches the IceCube2 project manager
#   Help Parameter : <?>
#   Parameter : update_icecube2.pl <IceCube2 Project File> <VHDL File Spec> <PFC File Spec>
#-------------------------------------------------------------------------------
#
# History:
#   V0.1 : cof 12.2013 -- Initial release
#   V0.2 : zas 08.2019 -- Changed actel to libero
#   V0.3 : ama 02.2023 -- Adapted for diamond
#   V0.4 : ama 05.2023 -- Adapted for IceCube2
#
################################################################################

$separator = '-' x 79;
$indent = ' ' x 2;
$verbose = 1;
$| = 1; # forces flush on prints

$ENV{TZ} = ''; # needed to be able to run Synplify avoinding license error
my $designerExe = "$ENV{ICECUBE2_HOME}\\iCEcube2.exe";
$icecubeFileSpec = $ARGV[0];
$vhdlFileSpec = $ARGV[1];
$pcfFileSpec = $ARGV[2];

use File::Basename;
$icecube2_dir  = dirname(dirname($vhdlFileSpec)) . '/icecube2/'; # get up concat and into icecube2
$projectTitle = basename($icecubeFileSpec, ".project");


if ($verbose == 1) {
  print "Script Parameters:\n";
  print "  * icecubeFileSpec: $icecubeFileSpec\n";
  print "  * vhdlFileSpec: $vhdlFileSpec\n";
  print "  * pcfFileSpec: $pcfFileSpec\n";
  print "  * Project title: $projectTitle\n"
}


#-------------------------------------------------------------------------------
# Project variables
#

$icecube2WorkFileSpec = $icecubeFileSpec . '.tmp';
															  # source directory
my $sourceDir = "$ENV{CONCAT_DIR}";
my $projectDir = "$ENV{ICECUBE2_WORK_DIR}";

#-------------------------------------------------------------------------------
# Update paths in the project file
#

if ($verbose == 1) {
  print "\n$separator\n\n";
  print "Updating file specifications in $icecubeFileSpec\n";
  print $indent, "temporary file spec: $icecube2WorkFileSpec\n";
}
my $line;
if ( !open(Icecube2File, $icecubeFileSpec) ){
  print("\nCould not open $icecubeFileSpec !\nExiting (failure)\n\n");
  die "\nCould not open $icecubeFileSpec !\nExiting (failure)\n\n";
}

open(workFile, ">$icecube2WorkFileSpec");
while (chop($line = <Icecube2File>)) {

                                                        # replace title
  if ($line =~ m/ProjectName=.*/i) {
    if ($verbose == 1) {print " * Replacing title line\n";}
    $line =~ s/=.*/=$projectTitle/;
  }
                                                        # replace VHDL file spec
  if ($line =~ m/ProjectVFiles=.*\.vhd/i) {
    if ($verbose == 1) {print " * Replacing VHDL line\n";}
    $line =~ s/=.*\.vhd/=$vhdlFileSpec/;
  }
                                                         # replace PFC file spec
  if ($line =~ m/PhysicalConstraintFile=.*\.pcf/i) {
    if ($verbose == 1) {print " * Replacing PCF line\n";}
    $line =~ s/=.*\.pcf/=$pcfFileSpec/;
  }

  print workFile ("$line\n");
}

close(workFile);
close(Icecube2File);


#-------------------------------------------------------------------------------
# delete original file and rename temporary file
#
unlink($icecubeFileSpec);
rename($icecube2WorkFileSpec, $icecubeFileSpec);

if ($verbose == 1) {
  print "\nDone\n\n";
  print "$separator\n\n";
}
