#!/usr/bin/perl
# filename:          start_icecube2.pl
# created by:        Corthay Francois & Zahno Silvan & Amand Axel
#
#-------------------------------------------------------------------------------
#
# Description:
#   Starts IceCube2
#   Help Parameter : <?>
#   Parameter : start_icecube2.pl <IceCube2 Project .project>
#-------------------------------------------------------------------------------
#
# History:
#   V0.1 : zas 08.2019 -- Initial release
#   V0.2 : ama 02.2023 -- Adapted for Diamond
#   V0.3 : ama 05.2023 -- Adapted for IceCube2
#
################################################################################

$separator = '-' x 79;
$indent = ' ' x 2;
$verbose = 1;
$| = 1; # forces flush on prints

$ENV{TZ} = ''; # needed to be able to run Synplify avoinding license error
my $designerExe = "$ENV{ICECUBE2_HOME}\\iCEcube2.exe";
$icecubeFileSpec = $ARGV[0];

#-------------------------------------------------------------------------------
# Launch IceCube2
#

if ($verbose == 1) {
  print "$separator\n\n";
  print "Launching Diamond from $designerExe\n";
  print $indent, "* Project file spec: $icecubeFileSpec\n\n";
  print "$separator\n\n";
}

system("$designerExe $icecubeFileSpec");
