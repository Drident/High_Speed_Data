-- --------------------------------------------------------------------
--
-- Copyright 1995 by IEEE. All rights reserved.
--
-- This source file is considered by the IEEE to be an essential part of the use
-- of the standard 1076.3 and as such may be distributed without change, except
-- as permitted by the standard. This source file may not be sold or distributed
-- for profit. This package may be modified to include additional data required
-- by tools, but must in no way change the external interfaces or simulation
-- behaviour of the description. It is permissible to add comments and/or
-- attributes to the package declarations, but not to change or delete any
-- original lines of the approved package declaration. The package body may be
-- changed only in accordance with the terms of clauses 7.1 and 7.2 of the
-- standard.
--
-- Title      : Standard VHDL Synthesis Package (1076.3, NUMERIC_STD)
--
-- Library    : This package shall be compiled into a library symbolically
--            : named IEEE.
--
-- Developers : IEEE DASC Synthesis Working Group, PAR 1076.3
--
-- Purpose    : This package defines numeric types and arithmetic functions
--            : for use with synthesis tools. Two numeric types are defined:
--            : -- > UNSIGNED: represents UNSIGNED number in vector form
--            : -- > SIGNED: represents a SIGNED number in vector form
--            : The base element type is type STD_LOGIC.
--            : The leftmost bit is treated as the most significant bit.
--            : Signed vectors are represented in two's complement form.
--            : This package contains overloaded arithmetic operators on
--            : the SIGNED and UNSIGNED types. The package also contains
--            : useful type conversions functions.
--            :
--            : If any argument to a function is a null array, a null array is
--            : returned (exceptions, if any, are noted individually).
--
-- Limitation :
--
-- Note       : No declarations or definitions shall be included in,
--            : or excluded from this package. The "package declaration"
--            : defines the types, subtypes and declarations of
--            : NUMERIC_STD. The NUMERIC_STD package body shall be
--            : considered the formal definition of the semantics of
--            : this package. Tool developers may choose to implement
--            : the package body in the most efficient manner available
--            : to them.
--
-- --------------------------------------------------------------------
--   modification history :
-- --------------------------------------------------------------------
--   Version:  2.4
--   Date   :  12 April 1995
-- -----------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;

package NUMERIC_STD is
  constant CopyRightNotice: STRING
      := "Copyright 1995 IEEE. All rights reserved.";

  attribute builtin_subprogram: string;

  --============================================================================
  -- Numeric array type definitions
  --============================================================================

  type UNSIGNED is array (NATURAL range <>) of STD_LOGIC;
  type SIGNED is array (NATURAL range <>) of STD_LOGIC;

  --============================================================================
  -- Arithmetic Operators:
  --===========================================================================

  -- Id: A.1
  function "abs" (ARG: SIGNED) return SIGNED;
    attribute builtin_subprogram of
        "ABS"[SIGNED return SIGNED]: function is "numstd_abs_ss";
  -- Result subtype: SIGNED(ARG'LENGTH-1 downto 0).
  -- Result: Returns the absolute value of a SIGNED vector ARG.

  -- Id: A.2
  function "-" (ARG: SIGNED) return SIGNED;
    attribute builtin_subprogram of
        "-"[SIGNED return SIGNED]: function is "numstd_unary_minus_ss";
  -- Result subtype: SIGNED(ARG'LENGTH-1 downto 0).
  -- Result: Returns the value of the unary minus operation on a
  --         SIGNED vector ARG.

  --============================================================================

  -- Id: A.3
  function "+" (L, R: UNSIGNED) return UNSIGNED;
    attribute builtin_subprogram of
        "+"[UNSIGNED, UNSIGNED return UNSIGNED]: function is "numstd_plus_uuu";
  -- Result subtype: UNSIGNED(MAX(L'LENGTH, R'LENGTH)-1 downto 0).
  -- Result: Adds two UNSIGNED vectors that may be of different lengths.

  -- Id: A.4
  function "+" (L, R: SIGNED) return SIGNED;
    attribute builtin_subprogram of
        "+"[SIGNED, SIGNED return SIGNED]: function is "numstd_plus_sss";
  -- Result subtype: SIGNED(MAX(L'LENGTH, R'LENGTH)-1 downto 0).
  -- Result: Adds two SIGNED vectors that may be of different lengths.

  -- Id: A.5
  function "+" (L: UNSIGNED; R: NATURAL) return UNSIGNED;
    attribute builtin_subprogram of
        "+"[UNSIGNED, NATURAL return UNSIGNED]: function is "numstd_plus_unu";
  -- Result subtype: UNSIGNED(L'LENGTH-1 downto 0).
  -- Result: Adds an UNSIGNED vector, L, with a non-negative INTEGER, R.

  -- Id: A.6
  function "+" (L: NATURAL; R: UNSIGNED) return UNSIGNED;
    attribute builtin_subprogram of
        "+"[NATURAL, UNSIGNED return UNSIGNED]: function is "numstd_plus_nuu";
  -- Result subtype: UNSIGNED(R'LENGTH-1 downto 0).
  -- Result: Adds a non-negative INTEGER, L, with an UNSIGNED vector, R.

  -- Id: A.7
  function "+" (L: INTEGER; R: SIGNED) return SIGNED;
    attribute builtin_subprogram of
        "+"[INTEGER, SIGNED return SIGNED]: function is "numstd_plus_iss";
  -- Result subtype: SIGNED(R'LENGTH-1 downto 0).
  -- Result: Adds an INTEGER, L(may be positive or negative), to a SIGNED
  --         vector, R.

  -- Id: A.8
  function "+" (L: SIGNED; R: INTEGER) return SIGNED;
    attribute builtin_subprogram of
        "+"[SIGNED, INTEGER return SIGNED]: function is "numstd_plus_sis";
  -- Result subtype: SIGNED(L'LENGTH-1 downto 0).
  -- Result: Adds a SIGNED vector, L, to an INTEGER, R.

  --============================================================================

  -- Id: A.9
  function "-" (L, R: UNSIGNED) return UNSIGNED;
    attribute builtin_subprogram of
        "-"[UNSIGNED, UNSIGNED return UNSIGNED]: function is "numstd_minus_uuu";
  -- Result subtype: UNSIGNED(MAX(L'LENGTH, R'LENGTH)-1 downto 0).
  -- Result: Subtracts two UNSIGNED vectors that may be of different lengths.

  -- Id: A.10
  function "-" (L, R: SIGNED) return SIGNED;
    attribute builtin_subprogram of
        "-"[SIGNED, SIGNED return SIGNED]: function is "numstd_minus_sss";
  -- Result subtype: SIGNED(MAX(L'LENGTH, R'LENGTH)-1 downto 0).
  -- Result: Subtracts a SIGNED vector, R, from another SIGNED vector, L,
  --         that may possibly be of different lengths.

  -- Id: A.11
  function "-" (L: UNSIGNED;R: NATURAL) return UNSIGNED;
    attribute builtin_subprogram of
        "-"[UNSIGNED, NATURAL return UNSIGNED]: function is "numstd_minus_unu";
  -- Result subtype: UNSIGNED(L'LENGTH-1 downto 0).
  -- Result: Subtracts a non-negative INTEGER, R, from an UNSIGNED vector, L.

  -- Id: A.12
  function "-" (L: NATURAL; R: UNSIGNED) return UNSIGNED;
    attribute builtin_subprogram of
        "-"[NATURAL, UNSIGNED return UNSIGNED]: function is "numstd_minus_nuu";
  -- Result subtype: UNSIGNED(R'LENGTH-1 downto 0).
  -- Result: Subtracts an UNSIGNED vector, R, from a non-negative INTEGER, L.

  -- Id: A.13
  function "-" (L: SIGNED; R: INTEGER) return SIGNED;
    attribute builtin_subprogram of
        "-"[SIGNED, INTEGER return SIGNED]: function is "numstd_minus_sis";
  -- Result subtype: SIGNED(L'LENGTH-1 downto 0).
  -- Result: Subtracts an INTEGER, R, from a SIGNED vector, L.

  -- Id: A.14
  function "-" (L: INTEGER; R: SIGNED) return SIGNED;
    attribute builtin_subprogram of
        "-"[INTEGER, SIGNED return SIGNED]: function is "numstd_minus_iss";
  -- Result subtype: SIGNED(R'LENGTH-1 downto 0).
  -- Result: Subtracts a SIGNED vector, R, from an INTEGER, L.

  --============================================================================

  -- Id: A.15
  function "*" (L, R: UNSIGNED) return UNSIGNED;
    attribute builtin_subprogram of
        "*"[UNSIGNED, UNSIGNED return UNSIGNED]: function is "numstd_mult_uuu";
  -- Result subtype: UNSIGNED((L'LENGTH+R'LENGTH-1) downto 0).
  -- Result: Performs the multiplication operation on two UNSIGNED vectors
  --         that may possibly be of different lengths.

  -- Id: A.16
  function "*" (L, R: SIGNED) return SIGNED;
    attribute builtin_subprogram of
        "*"[SIGNED, SIGNED return SIGNED]: function is "numstd_mult_sss";
  -- Result subtype: SIGNED((L'LENGTH+R'LENGTH-1) downto 0)
  -- Result: Multiplies two SIGNED vectors that may possibly be of
  --         different lengths.

  -- Id: A.17
  function "*" (L: UNSIGNED; R: NATURAL) return UNSIGNED;
    attribute builtin_subprogram of
        "*"[UNSIGNED, NATURAL return UNSIGNED]: function is "numstd_mult_unu";
  -- Result subtype: UNSIGNED((L'LENGTH+L'LENGTH-1) downto 0).
  -- Result: Multiplies an UNSIGNED vector, L, with a non-negative
  --         INTEGER, R. R is converted to an UNSIGNED vector of
  --         SIZE L'LENGTH before multiplication.

  -- Id: A.18
  function "*" (L: NATURAL; R: UNSIGNED) return UNSIGNED;
    attribute builtin_subprogram of
        "*"[NATURAL, UNSIGNED return UNSIGNED]: function is "numstd_mult_nuu";
  -- Result subtype: UNSIGNED((R'LENGTH+R'LENGTH-1) downto 0).
  -- Result: Multiplies an UNSIGNED vector, R, with a non-negative
  --         INTEGER, L. L is converted to an UNSIGNED vector of
  --         SIZE R'LENGTH before multiplication.

  -- Id: A.19
  function "*" (L: SIGNED; R: INTEGER) return SIGNED;
    attribute builtin_subprogram of
        "*"[SIGNED, INTEGER return SIGNED]: function is "numstd_mult_sis";
  -- Result subtype: SIGNED((L'LENGTH+L'LENGTH-1) downto 0)
  -- Result: Multiplies a SIGNED vector, L, with an INTEGER, R. R is
  --         converted to a SIGNED vector of SIZE L'LENGTH before
  --         multiplication.

  -- Id: A.20
  function "*" (L: INTEGER; R: SIGNED) return SIGNED;
    attribute builtin_subprogram of
        "*"[INTEGER, SIGNED return SIGNED]: function is "numstd_mult_iss";
  -- Result subtype: SIGNED((R'LENGTH+R'LENGTH-1) downto 0)
  -- Result: Multiplies a SIGNED vector, R, with an INTEGER, L. L is
  --         converted to a SIGNED vector of SIZE R'LENGTH before
  --         multiplication.

  --============================================================================
  --
  -- NOTE: If second argument is zero for "/" operator, a severity level
  --       of ERROR is issued.

  -- Id: A.21
  function "/" (L, R: UNSIGNED) return UNSIGNED;
    attribute builtin_subprogram of
        "/"[UNSIGNED, UNSIGNED return UNSIGNED]: function is "numstd_div_uuu";
  -- Result subtype: UNSIGNED(L'LENGTH-1 downto 0)
  -- Result: Divides an UNSIGNED vector, L, by another UNSIGNED vector, R.

  -- Id: A.22
  function "/" (L, R: SIGNED) return SIGNED;
    attribute builtin_subprogram of
        "/"[SIGNED, SIGNED return SIGNED]: function is "numstd_div_sss";
  -- Result subtype: SIGNED(L'LENGTH-1 downto 0)
  -- Result: Divides an SIGNED vector, L, by another SIGNED vector, R.

  -- Id: A.23
  function "/" (L: UNSIGNED; R: NATURAL) return UNSIGNED;
    attribute builtin_subprogram of
        "/"[UNSIGNED, NATURAL return UNSIGNED]: function is "numstd_div_unu";
  -- Result subtype: UNSIGNED(L'LENGTH-1 downto 0)
  -- Result: Divides an UNSIGNED vector, L, by a non-negative INTEGER, R.
  --         If NO_OF_BITS(R) > L'LENGTH, result is truncated to L'LENGTH.

  -- Id: A.24
  function "/" (L: NATURAL; R: UNSIGNED) return UNSIGNED;
    attribute builtin_subprogram of
        "/"[NATURAL, UNSIGNED return UNSIGNED]: function is "numstd_div_nuu";
  -- Result subtype: UNSIGNED(R'LENGTH-1 downto 0)
  -- Result: Divides a non-negative INTEGER, L, by an UNSIGNED vector, R.
  --         If NO_OF_BITS(L) > R'LENGTH, result is truncated to R'LENGTH.

  -- Id: A.25
  function "/" (L: SIGNED; R: INTEGER) return SIGNED;
    attribute builtin_subprogram of
        "/"[SIGNED, INTEGER return SIGNED]: function is "numstd_div_sis";
  -- Result subtype: SIGNED(L'LENGTH-1 downto 0)
  -- Result: Divides a SIGNED vector, L, by an INTEGER, R.
  --         If NO_OF_BITS(R) > L'LENGTH, result is truncated to L'LENGTH.

  -- Id: A.26
  function "/" (L: INTEGER; R: SIGNED) return SIGNED;
    attribute builtin_subprogram of
        "/"[INTEGER, SIGNED return SIGNED]: function is "numstd_div_iss";
  -- Result subtype: SIGNED(R'LENGTH-1 downto 0)
  -- Result: Divides an INTEGER, L, by a SIGNED vector, R.
  --         If NO_OF_BITS(L) > R'LENGTH, result is truncated to R'LENGTH.

  --============================================================================
  --
  -- NOTE: If second argument is zero for "rem" operator, a severity level
  --       of ERROR is issued.

  -- Id: A.27
  function "rem" (L, R: UNSIGNED) return UNSIGNED;
    attribute builtin_subprogram of
        "REM"[UNSIGNED, UNSIGNED return UNSIGNED]: function is "numstd_rem_uuu";
  -- Result subtype: UNSIGNED(R'LENGTH-1 downto 0)
  -- Result: Computes "L rem R" where L and R are UNSIGNED vectors.

  -- Id: A.28
  function "rem" (L, R: SIGNED) return SIGNED;
    attribute builtin_subprogram of
        "REM"[SIGNED, SIGNED return SIGNED]: function is "numstd_rem_sss";
  -- Result subtype: SIGNED(R'LENGTH-1 downto 0)
  -- Result: Computes "L rem R" where L and R are SIGNED vectors.

  -- Id: A.29
  function "rem" (L: UNSIGNED; R: NATURAL) return UNSIGNED;
    attribute builtin_subprogram of
        "REM"[UNSIGNED, NATURAL return UNSIGNED]: function is "numstd_rem_unu";
  -- Result subtype: UNSIGNED(L'LENGTH-1 downto 0)
  -- Result: Computes "L rem R" where L is an UNSIGNED vector and R is a
  --         non-negative INTEGER.
  --         If NO_OF_BITS(R) > L'LENGTH, result is truncated to L'LENGTH.

  -- Id: A.30
  function "rem" (L: NATURAL; R: UNSIGNED) return UNSIGNED;
    attribute builtin_subprogram of
        "REM"[NATURAL, UNSIGNED return UNSIGNED]: function is "numstd_rem_nuu";
  -- Result subtype: UNSIGNED(R'LENGTH-1 downto 0)
  -- Result: Computes "L rem R" where R is an UNSIGNED vector and L is a
  --         non-negative INTEGER.
  --         If NO_OF_BITS(L) > R'LENGTH, result is truncated to R'LENGTH.

  -- Id: A.31
  function "rem" (L: SIGNED; R: INTEGER) return SIGNED;
    attribute builtin_subprogram of
        "REM"[SIGNED, INTEGER return SIGNED]: function is "numstd_rem_sis";
  -- Result subtype: SIGNED(L'LENGTH-1 downto 0)
  -- Result: Computes "L rem R" where L is SIGNED vector and R is an INTEGER.
  --         If NO_OF_BITS(R) > L'LENGTH, result is truncated to L'LENGTH.

  -- Id: A.32
  function "rem" (L: INTEGER; R: SIGNED) return SIGNED;
    attribute builtin_subprogram of
        "REM"[INTEGER, SIGNED return SIGNED]: function is "numstd_rem_iss";
  -- Result subtype: SIGNED(R'LENGTH-1 downto 0)
  -- Result: Computes "L rem R" where R is SIGNED vector and L is an INTEGER.
  --         If NO_OF_BITS(L) > R'LENGTH, result is truncated to R'LENGTH.

  --============================================================================
  --
  -- NOTE: If second argument is zero for "mod" operator, a severity level
  --       of ERROR is issued.

  -- Id: A.33
  function "mod" (L, R: UNSIGNED) return UNSIGNED;
    attribute builtin_subprogram of
        "MOD"[UNSIGNED, UNSIGNED return UNSIGNED]: function is "numstd_mod_uuu";
  -- Result subtype: UNSIGNED(R'LENGTH-1 downto 0)
  -- Result: Computes "L mod R" where L and R are UNSIGNED vectors.

  -- Id: A.34
  function "mod" (L, R: SIGNED) return SIGNED;
    attribute builtin_subprogram of
        "MOD"[SIGNED, SIGNED return SIGNED]: function is "numstd_mod_sss";
  -- Result subtype: SIGNED(R'LENGTH-1 downto 0)
  -- Result: Computes "L mod R" where L and R are SIGNED vectors.

  -- Id: A.35
  function "mod" (L: UNSIGNED; R: NATURAL) return UNSIGNED;
    attribute builtin_subprogram of
        "MOD"[UNSIGNED, NATURAL return UNSIGNED]: function is "numstd_mod_unu";
  -- Result subtype: UNSIGNED(L'LENGTH-1 downto 0)
  -- Result: Computes "L mod R" where L is an UNSIGNED vector and R
  --         is a non-negative INTEGER.
  --         If NO_OF_BITS(R) > L'LENGTH, result is truncated to L'LENGTH.

  -- Id: A.36
  function "mod" (L: NATURAL; R: UNSIGNED) return UNSIGNED;
    attribute builtin_subprogram of
        "MOD"[NATURAL, UNSIGNED return UNSIGNED]: function is "numstd_mod_nuu";
  -- Result subtype: UNSIGNED(R'LENGTH-1 downto 0)
  -- Result: Computes "L mod R" where R is an UNSIGNED vector and L
  --         is a non-negative INTEGER.
  --         If NO_OF_BITS(L) > R'LENGTH, result is truncated to R'LENGTH.

  -- Id: A.37
  function "mod" (L: SIGNED; R: INTEGER) return SIGNED;
    attribute builtin_subprogram of
        "MOD"[SIGNED, INTEGER return SIGNED]: function is "numstd_mod_sis";
  -- Result subtype: SIGNED(L'LENGTH-1 downto 0)
  -- Result: Computes "L mod R" where L is a SIGNED vector and
  --         R is an INTEGER.
  --         If NO_OF_BITS(R) > L'LENGTH, result is truncated to L'LENGTH.

  -- Id: A.38
  function "mod" (L: INTEGER; R: SIGNED) return SIGNED;
    attribute builtin_subprogram of
        "MOD"[INTEGER, SIGNED return SIGNED]: function is "numstd_mod_iss";
  -- Result subtype: SIGNED(R'LENGTH-1 downto 0)
  -- Result: Computes "L mod R" where L is an INTEGER and
  --         R is a SIGNED vector.
  --         If NO_OF_BITS(L) > R'LENGTH, result is truncated to R'LENGTH.

  --============================================================================
  -- Comparison Operators
  --============================================================================

  -- Id: C.1
  function ">" (L, R: UNSIGNED) return BOOLEAN;
    attribute builtin_subprogram of
        ">"[UNSIGNED, UNSIGNED return BOOLEAN]: function is "numstd_gt_uu";
  -- Result subtype: BOOLEAN
  -- Result: Computes "L > R" where L and R are UNSIGNED vectors possibly
  --         of different lengths.

  -- Id: C.2
  function ">" (L, R: SIGNED) return BOOLEAN;
    attribute builtin_subprogram of
        ">"[SIGNED, SIGNED return BOOLEAN]: function is "numstd_gt_ss";
  -- Result subtype: BOOLEAN
  -- Result: Computes "L > R" where L and R are SIGNED vectors possibly
  --         of different lengths.

  -- Id: C.3
  function ">" (L: NATURAL; R: UNSIGNED) return BOOLEAN;
    attribute builtin_subprogram of
        ">"[NATURAL, UNSIGNED return BOOLEAN]: function is "numstd_gt_nu";
  -- Result subtype: BOOLEAN
  -- Result: Computes "L > R" where L is a non-negative INTEGER and
  --         R is an UNSIGNED vector.

  -- Id: C.4
  function ">" (L: INTEGER; R: SIGNED) return BOOLEAN;
    attribute builtin_subprogram of
        ">"[INTEGER, SIGNED return BOOLEAN]: function is "numstd_gt_is";
  -- Result subtype: BOOLEAN
  -- Result: Computes "L > R" where L is a INTEGER and
  --         R is a SIGNED vector.

  -- Id: C.5
  function ">" (L: UNSIGNED; R: NATURAL) return BOOLEAN;
    attribute builtin_subprogram of
        ">"[UNSIGNED, NATURAL return BOOLEAN]: function is "numstd_gt_un";
  -- Result subtype: BOOLEAN
  -- Result: Computes "L > R" where L is an UNSIGNED vector and
  --         R is a non-negative INTEGER.

  -- Id: C.6
  function ">" (L: SIGNED; R: INTEGER) return BOOLEAN;
    attribute builtin_subprogram of
        ">"[SIGNED, INTEGER return BOOLEAN]: function is "numstd_gt_si";
  -- Result subtype: BOOLEAN
  -- Result: Computes "L > R" where L is a SIGNED vector and
  --         R is a INTEGER.

  --============================================================================

  -- Id: C.7
  function "<" (L, R: UNSIGNED) return BOOLEAN;
    attribute builtin_subprogram of
        "<"[UNSIGNED, UNSIGNED return BOOLEAN]: function is "numstd_lt_uu";
  -- Result subtype: BOOLEAN
  -- Result: Computes "L < R" where L and R are UNSIGNED vectors possibly
  --         of different lengths.

  -- Id: C.8
  function "<" (L, R: SIGNED) return BOOLEAN;
    attribute builtin_subprogram of
        "<"[SIGNED, SIGNED return BOOLEAN]: function is "numstd_lt_ss";
  -- Result subtype: BOOLEAN
  -- Result: Computes "L < R" where L and R are SIGNED vectors possibly
  --         of different lengths.

  -- Id: C.9
  function "<" (L: NATURAL; R: UNSIGNED) return BOOLEAN;
    attribute builtin_subprogram of
        "<"[NATURAL, UNSIGNED return BOOLEAN]: function is "numstd_lt_nu";
  -- Result subtype: BOOLEAN
  -- Result: Computes "L < R" where L is a non-negative INTEGER and
  --         R is an UNSIGNED vector.

  -- Id: C.10
  function "<" (L: INTEGER; R: SIGNED) return BOOLEAN;
    attribute builtin_subprogram of
        "<"[INTEGER, SIGNED return BOOLEAN]: function is "numstd_lt_is";
  -- Result subtype: BOOLEAN
  -- Result: Computes "L < R" where L is an INTEGER and
  --         R is a SIGNED vector.

  -- Id: C.11
  function "<" (L: UNSIGNED; R: NATURAL) return BOOLEAN;
    attribute builtin_subprogram of
        "<"[UNSIGNED, NATURAL return BOOLEAN]: function is "numstd_lt_un";
  -- Result subtype: BOOLEAN
  -- Result: Computes "L < R" where L is an UNSIGNED vector and
  --         R is a non-negative INTEGER.

  -- Id: C.12
  function "<" (L: SIGNED; R: INTEGER) return BOOLEAN;
    attribute builtin_subprogram of
        "<"[SIGNED, INTEGER return BOOLEAN]: function is "numstd_lt_si";
  -- Result subtype: BOOLEAN
  -- Result: Computes "L < R" where L is a SIGNED vector and
  --         R is an INTEGER.

  --============================================================================

  -- Id: C.13
  function "<=" (L, R: UNSIGNED) return BOOLEAN;
    attribute builtin_subprogram of
        "<="[UNSIGNED, UNSIGNED return BOOLEAN]: function is "numstd_lte_uu";
  -- Result subtype: BOOLEAN
  -- Result: Computes "L <= R" where L and R are UNSIGNED vectors possibly
  --         of different lengths.

  -- Id: C.14
  function "<=" (L, R: SIGNED) return BOOLEAN;
    attribute builtin_subprogram of
        "<="[SIGNED, SIGNED return BOOLEAN]: function is "numstd_lte_ss";
  -- Result subtype: BOOLEAN
  -- Result: Computes "L <= R" where L and R are SIGNED vectors possibly
  --         of different lengths.

  -- Id: C.15
  function "<=" (L: NATURAL; R: UNSIGNED) return BOOLEAN;
    attribute builtin_subprogram of
        "<="[NATURAL, UNSIGNED return BOOLEAN]: function is "numstd_lte_nu";
  -- Result subtype: BOOLEAN
  -- Result: Computes "L <= R" where L is a non-negative INTEGER and
  --         R is an UNSIGNED vector.

  -- Id: C.16
  function "<=" (L: INTEGER; R: SIGNED) return BOOLEAN;
    attribute builtin_subprogram of
        "<="[INTEGER, SIGNED return BOOLEAN]: function is "numstd_lte_is";
  -- Result subtype: BOOLEAN
  -- Result: Computes "L <= R" where L is an INTEGER and
  --         R is a SIGNED vector.

  -- Id: C.17
  function "<=" (L: UNSIGNED; R: NATURAL) return BOOLEAN;
    attribute builtin_subprogram of
        "<="[UNSIGNED, NATURAL return BOOLEAN]: function is "numstd_lte_un";
  -- Result subtype: BOOLEAN
  -- Result: Computes "L <= R" where L is an UNSIGNED vector and
  --         R is a non-negative INTEGER.

  -- Id: C.18
  function "<=" (L: SIGNED; R: INTEGER) return BOOLEAN;
    attribute builtin_subprogram of
        "<="[SIGNED, INTEGER return BOOLEAN]: function is "numstd_lte_si";
  -- Result subtype: BOOLEAN
  -- Result: Computes "L <= R" where L is a SIGNED vector and
  --         R is an INTEGER.

  --============================================================================

  -- Id: C.19
  function ">=" (L, R: UNSIGNED) return BOOLEAN;
    attribute builtin_subprogram of
        ">="[UNSIGNED, UNSIGNED return BOOLEAN]: function is "numstd_gte_uu";
  -- Result subtype: BOOLEAN
  -- Result: Computes "L >= R" where L and R are UNSIGNED vectors possibly
  --         of different lengths.

  -- Id: C.20
  function ">=" (L, R: SIGNED) return BOOLEAN;
    attribute builtin_subprogram of
        ">="[SIGNED, SIGNED return BOOLEAN]: function is "numstd_gte_ss";
  -- Result subtype: BOOLEAN
  -- Result: Computes "L >= R" where L and R are SIGNED vectors possibly
  --         of different lengths.

  -- Id: C.21
  function ">=" (L: NATURAL; R: UNSIGNED) return BOOLEAN;
    attribute builtin_subprogram of
        ">="[NATURAL, UNSIGNED return BOOLEAN]: function is "numstd_gte_nu";
  -- Result subtype: BOOLEAN
  -- Result: Computes "L >= R" where L is a non-negative INTEGER and
  --         R is an UNSIGNED vector.

  -- Id: C.22
  function ">=" (L: INTEGER; R: SIGNED) return BOOLEAN;
    attribute builtin_subprogram of
        ">="[INTEGER, SIGNED return BOOLEAN]: function is "numstd_gte_is";
  -- Result subtype: BOOLEAN
  -- Result: Computes "L >= R" where L is an INTEGER and
  --         R is a SIGNED vector.

  -- Id: C.23
  function ">=" (L: UNSIGNED; R: NATURAL) return BOOLEAN;
    attribute builtin_subprogram of
        ">="[UNSIGNED, NATURAL return BOOLEAN]: function is "numstd_gte_un";
  -- Result subtype: BOOLEAN
  -- Result: Computes "L >= R" where L is an UNSIGNED vector and
  --         R is a non-negative INTEGER.

  -- Id: C.24
  function ">=" (L: SIGNED; R: INTEGER) return BOOLEAN;
    attribute builtin_subprogram of
        ">="[SIGNED, INTEGER return BOOLEAN]: function is "numstd_gte_si";
  -- Result subtype: BOOLEAN
  -- Result: Computes "L >= R" where L is a SIGNED vector and
  --         R is an INTEGER.

  --============================================================================

  -- Id: C.25
  function "=" (L, R: UNSIGNED) return BOOLEAN;
    attribute builtin_subprogram of
        "="[UNSIGNED, UNSIGNED return BOOLEAN]: function is "numstd_eq_uu";
  -- Result subtype: BOOLEAN
  -- Result: Computes "L = R" where L and R are UNSIGNED vectors possibly
  --         of different lengths.

  -- Id: C.26
  function "=" (L, R: SIGNED) return BOOLEAN;
    attribute builtin_subprogram of
        "="[SIGNED, SIGNED return BOOLEAN]: function is "numstd_eq_ss";
  -- Result subtype: BOOLEAN
  -- Result: Computes "L = R" where L and R are SIGNED vectors possibly
  --         of different lengths.

  -- Id: C.27
  function "=" (L: NATURAL; R: UNSIGNED) return BOOLEAN;
    attribute builtin_subprogram of
        "="[NATURAL, UNSIGNED return BOOLEAN]: function is "numstd_eq_nu";
  -- Result subtype: BOOLEAN
  -- Result: Computes "L = R" where L is a non-negative INTEGER and
  --         R is an UNSIGNED vector.

  -- Id: C.28
  function "=" (L: INTEGER; R: SIGNED) return BOOLEAN;
    attribute builtin_subprogram of
        "="[INTEGER, SIGNED return BOOLEAN]: function is "numstd_eq_is";
  -- Result subtype: BOOLEAN
  -- Result: Computes "L = R" where L is an INTEGER and
  --         R is a SIGNED vector.

  -- Id: C.29
  function "=" (L: UNSIGNED; R: NATURAL) return BOOLEAN;
    attribute builtin_subprogram of
        "="[UNSIGNED, NATURAL return BOOLEAN]: function is "numstd_eq_un";
  -- Result subtype: BOOLEAN
  -- Result: Computes "L = R" where L is an UNSIGNED vector and
  --         R is a non-negative INTEGER.

  -- Id: C.30
  function "=" (L: SIGNED; R: INTEGER) return BOOLEAN;
    attribute builtin_subprogram of
        "="[SIGNED, INTEGER return BOOLEAN]: function is "numstd_eq_si";
  -- Result subtype: BOOLEAN
  -- Result: Computes "L = R" where L is a SIGNED vector and
  --         R is an INTEGER.

  --============================================================================

  -- Id: C.31
  function "/=" (L, R: UNSIGNED) return BOOLEAN;
    attribute builtin_subprogram of
        "/="[UNSIGNED, UNSIGNED return BOOLEAN]: function is "numstd_neq_uu";
  -- Result subtype: BOOLEAN
  -- Result: Computes "L /= R" where L and R are UNSIGNED vectors possibly
  --         of different lengths.

  -- Id: C.32
  function "/=" (L, R: SIGNED) return BOOLEAN;
    attribute builtin_subprogram of
        "/="[SIGNED, SIGNED return BOOLEAN]: function is "numstd_neq_ss";
  -- Result subtype: BOOLEAN
  -- Result: Computes "L /= R" where L and R are SIGNED vectors possibly
  --         of different lengths.

  -- Id: C.33
  function "/=" (L: NATURAL; R: UNSIGNED) return BOOLEAN;
    attribute builtin_subprogram of
        "/="[NATURAL, UNSIGNED return BOOLEAN]: function is "numstd_neq_nu";
  -- Result subtype: BOOLEAN
  -- Result: Computes "L /= R" where L is a non-negative INTEGER and
  --         R is an UNSIGNED vector.

  -- Id: C.34
  function "/=" (L: INTEGER; R: SIGNED) return BOOLEAN;
    attribute builtin_subprogram of
        "/="[INTEGER, SIGNED return BOOLEAN]: function is "numstd_neq_is";
  -- Result subtype: BOOLEAN
  -- Result: Computes "L /= R" where L is an INTEGER and
  --         R is a SIGNED vector.

  -- Id: C.35
  function "/=" (L: UNSIGNED; R: NATURAL) return BOOLEAN;
    attribute builtin_subprogram of
        "/="[UNSIGNED, NATURAL return BOOLEAN]: function is "numstd_neq_un";
  -- Result subtype: BOOLEAN
  -- Result: Computes "L /= R" where L is an UNSIGNED vector and
  --         R is a non-negative INTEGER.

  -- Id: C.36
  function "/=" (L: SIGNED; R: INTEGER) return BOOLEAN;
    attribute builtin_subprogram of
        "/="[SIGNED, INTEGER return BOOLEAN]: function is "numstd_neq_si";
  -- Result subtype: BOOLEAN
  -- Result: Computes "L /= R" where L is a SIGNED vector and
  --         R is an INTEGER.

  --============================================================================
  -- Shift and Rotate Functions
  --============================================================================

  -- Id: S.1
  function SHIFT_LEFT (ARG: UNSIGNED; COUNT: NATURAL) return UNSIGNED;
    attribute builtin_subprogram of
        SHIFT_LEFT[UNSIGNED, NATURAL return UNSIGNED]: function is "array_sll_1164";
  -- Result subtype: UNSIGNED(ARG'LENGTH-1 downto 0)
  -- Result: Performs a shift-left on an UNSIGNED vector COUNT times.
  --         The vacated positions are filled with '0'.
  --         The COUNT leftmost elements are lost.

  -- Id: S.2
  function SHIFT_RIGHT (ARG: UNSIGNED; COUNT: NATURAL) return UNSIGNED;
    attribute builtin_subprogram of
        SHIFT_RIGHT[UNSIGNED, NATURAL return UNSIGNED]: function is "array_srl_1164";
  -- Result subtype: UNSIGNED(ARG'LENGTH-1 downto 0)
  -- Result: Performs a shift-right on an UNSIGNED vector COUNT times.
  --         The vacated positions are filled with '0'.
  --         The COUNT rightmost elements are lost.

  -- Id: S.3
  function SHIFT_LEFT (ARG: SIGNED; COUNT: NATURAL) return SIGNED;
    attribute builtin_subprogram of
        SHIFT_LEFT[SIGNED, NATURAL return SIGNED]: function is "array_sll_1164";
  -- Result subtype: SIGNED(ARG'LENGTH-1 downto 0)
  -- Result: Performs a shift-left on a SIGNED vector COUNT times.
  --         The vacated positions are filled with '0'.
  --         The COUNT leftmost elements are lost.

  -- Id: S.4
  function SHIFT_RIGHT (ARG: SIGNED; COUNT: NATURAL) return SIGNED;
    attribute builtin_subprogram of
        SHIFT_RIGHT[SIGNED, NATURAL return SIGNED]: function is "array_sra";
  -- Result subtype: SIGNED(ARG'LENGTH-1 downto 0)
  -- Result: Performs a shift-right on a SIGNED vector COUNT times.
  --         The vacated positions are filled with the leftmost
  --         element, ARG'LEFT. The COUNT rightmost elements are lost.

  --============================================================================

  -- Id: S.5
  function ROTATE_LEFT (ARG: UNSIGNED; COUNT: NATURAL) return UNSIGNED;
    attribute builtin_subprogram of
        ROTATE_LEFT[UNSIGNED, NATURAL return UNSIGNED]: function is "array_rol";
  -- Result subtype: UNSIGNED(ARG'LENGTH-1 downto 0)
  -- Result: Performs a rotate-left of an UNSIGNED vector COUNT times.

  -- Id: S.6
  function ROTATE_RIGHT (ARG: UNSIGNED; COUNT: NATURAL) return UNSIGNED;
    attribute builtin_subprogram of
        ROTATE_RIGHT[UNSIGNED, NATURAL return UNSIGNED]: function is "array_ror";
  -- Result subtype: UNSIGNED(ARG'LENGTH-1 downto 0)
  -- Result: Performs a rotate-right of an UNSIGNED vector COUNT times.

  -- Id: S.7
  function ROTATE_LEFT (ARG: SIGNED; COUNT: NATURAL) return SIGNED;
    attribute builtin_subprogram of
        ROTATE_LEFT[SIGNED, NATURAL return SIGNED]: function is "array_rol";
  -- Result subtype: SIGNED(ARG'LENGTH-1 downto 0)
  -- Result: Performs a logical rotate-left of a SIGNED
  --         vector COUNT times.

  -- Id: S.8
  function ROTATE_RIGHT (ARG: SIGNED; COUNT: NATURAL) return SIGNED;
    attribute builtin_subprogram of
        ROTATE_RIGHT[SIGNED, NATURAL return SIGNED]: function is "array_ror";
  -- Result subtype: SIGNED(ARG'LENGTH-1 downto 0)
  -- Result: Performs a logical rotate-right of a SIGNED
  --         vector COUNT times.

  --============================================================================

  --============================================================================

  ------------------------------------------------------------------------------
  --   Note : Function S.9 is not compatible with VHDL 1076-1987. Comment
  --   out the function (declaration and body) for VHDL 1076-1987 compatibility.
  ------------------------------------------------------------------------------
  -- Id: S.9
  function "sll" (ARG: UNSIGNED; COUNT: INTEGER) return UNSIGNED;
    attribute builtin_subprogram of
        "SLL"[UNSIGNED, INTEGER return UNSIGNED]: function is "array_sll_1164";
  -- Result subtype: UNSIGNED(ARG'LENGTH-1 downto 0)
  -- Result: SHIFT_LEFT(ARG, COUNT)

  ------------------------------------------------------------------------------
  -- Note : Function S.10 is not compatible with VHDL 1076-1987. Comment
  --   out the function (declaration and body) for VHDL 1076-1987 compatibility.
  ------------------------------------------------------------------------------
  -- Id: S.10
  function "sll" (ARG: SIGNED; COUNT: INTEGER) return SIGNED;
    attribute builtin_subprogram of
        "SLL"[SIGNED, INTEGER return SIGNED]: function is "array_sll_1164";
  -- Result subtype: SIGNED(ARG'LENGTH-1 downto 0)
  -- Result: SHIFT_LEFT(ARG, COUNT)

  ------------------------------------------------------------------------------
  --   Note : Function S.11 is not compatible with VHDL 1076-1987. Comment
  --   out the function (declaration and body) for VHDL 1076-1987 compatibility.
  ------------------------------------------------------------------------------
  -- Id: S.11
  function "srl" (ARG: UNSIGNED; COUNT: INTEGER) return UNSIGNED;
    attribute builtin_subprogram of
        "SRL"[UNSIGNED, INTEGER return UNSIGNED]: function is "array_srl_1164";
  -- Result subtype: UNSIGNED(ARG'LENGTH-1 downto 0)
  -- Result: SHIFT_RIGHT(ARG, COUNT)

  ------------------------------------------------------------------------------
  --   Note : Function S.12 is not compatible with VHDL 1076-1987. Comment
  --   out the function (declaration and body) for VHDL 1076-1987 compatibility.
  ------------------------------------------------------------------------------
  -- Id: S.12
  function "srl" (ARG: SIGNED; COUNT: INTEGER) return SIGNED;
    attribute builtin_subprogram of
        "SRL"[SIGNED, INTEGER return SIGNED]: function is "array_srl_1164";
  -- Result subtype: SIGNED(ARG'LENGTH-1 downto 0)
  -- Result: SIGNED(SHIFT_RIGHT(UNSIGNED(ARG), COUNT))

  ------------------------------------------------------------------------------
  --   Note : Function S.13 is not compatible with VHDL 1076-1987. Comment
  -- out the function (declaration and body) for VHDL 1076-1987 compatibility.
  ------------------------------------------------------------------------------
  -- Id: S.13
  function "rol" (ARG: UNSIGNED; COUNT: INTEGER) return UNSIGNED;
    attribute builtin_subprogram of
        "ROL"[UNSIGNED, INTEGER return UNSIGNED]: function is "array_rol";
  -- Result subtype: UNSIGNED(ARG'LENGTH-1 downto 0)
  -- Result: ROTATE_LEFT(ARG, COUNT)

  ------------------------------------------------------------------------------
  --   Note : Function S.14 is not compatible with VHDL 1076-1987. Comment
  --   out the function (declaration and body) for VHDL 1076-1987 compatibility.
  ------------------------------------------------------------------------------
  -- Id: S.14
  function "rol" (ARG: SIGNED; COUNT: INTEGER) return SIGNED;
    attribute builtin_subprogram of
        "ROL"[SIGNED, INTEGER return SIGNED]: function is "array_rol";
  -- Result subtype: SIGNED(ARG'LENGTH-1 downto 0)
  -- Result: ROTATE_LEFT(ARG, COUNT)

  ------------------------------------------------------------------------------
  -- Note : Function S.15 is not compatible with VHDL 1076-1987. Comment
  --   out the function (declaration and body) for VHDL 1076-1987 compatibility.
  ------------------------------------------------------------------------------
  -- Id: S.15
  function "ror" (ARG: UNSIGNED; COUNT: INTEGER) return UNSIGNED;
    attribute builtin_subprogram of
        "ROR"[UNSIGNED, INTEGER return UNSIGNED]: function is "array_ror";
  -- Result subtype: UNSIGNED(ARG'LENGTH-1 downto 0)
  -- Result: ROTATE_RIGHT(ARG, COUNT)

  ------------------------------------------------------------------------------
  --   Note : Function S.16 is not compatible with VHDL 1076-1987. Comment
  --   out the function (declaration and body) for VHDL 1076-1987 compatibility.
  ------------------------------------------------------------------------------
  -- Id: S.16
  function "ror" (ARG: SIGNED; COUNT: INTEGER) return SIGNED;
    attribute builtin_subprogram of
        "ROR"[SIGNED, INTEGER return SIGNED]: function is "array_ror";
  -- Result subtype: SIGNED(ARG'LENGTH-1 downto 0)
  -- Result: ROTATE_RIGHT(ARG, COUNT)

  --============================================================================
  --   RESIZE Functions
  --============================================================================

  -- Id: R.1
  function RESIZE (ARG: SIGNED; NEW_SIZE: NATURAL) return SIGNED;
    attribute builtin_subprogram of
        RESIZE[SIGNED, NATURAL return SIGNED]: function is "numstd_resize_sns";
  -- Result subtype: SIGNED(NEW_SIZE-1 downto 0)
  -- Result: Resizes the SIGNED vector ARG to the specified size.
  --         To create a larger vector, the new [leftmost] bit positions
  --         are filled with the sign bit (ARG'LEFT). When truncating,
  --         the sign bit is retained along with the rightmost part.

  -- Id: R.2
  function RESIZE (ARG: UNSIGNED; NEW_SIZE: NATURAL) return UNSIGNED;
    attribute builtin_subprogram of
        RESIZE[UNSIGNED, NATURAL return UNSIGNED]: function is "numstd_resize_unu";
  -- Result subtype: UNSIGNED(NEW_SIZE-1 downto 0)
  -- Result: Resizes the SIGNED vector ARG to the specified size.
  --         To create a larger vector, the new [leftmost] bit positions
  --         are filled with '0'. When truncating, the leftmost bits
  --         are dropped.

  --============================================================================
  -- Conversion Functions
  --============================================================================

  -- Id: D.1
  function TO_INTEGER (ARG: UNSIGNED) return NATURAL;
    attribute builtin_subprogram of
        TO_INTEGER[UNSIGNED return NATURAL]: function is "numstd_conv_integer_un2"; 
  -- Result subtype: NATURAL. Value cannot be negative since parameter is an
  --             UNSIGNED vector.
  -- Result: Converts the UNSIGNED vector to an INTEGER.

  -- Id: D.2
  function TO_INTEGER (ARG: SIGNED) return INTEGER;
    attribute builtin_subprogram of
        TO_INTEGER[SIGNED return INTEGER]: function is "numstd_conv_integer_si"; 
  -- Result subtype: INTEGER
  -- Result: Converts a SIGNED vector to an INTEGER.

  -- Id: D.3
  function TO_UNSIGNED (ARG, SIZE: NATURAL) return UNSIGNED;
    attribute builtin_subprogram of
        TO_UNSIGNED [NATURAL, NATURAL return UNSIGNED]: function is "numstd_conv_unsigned_nu";
  -- Result subtype: UNSIGNED(SIZE-1 downto 0)
  -- Result: Converts a non-negative INTEGER to an UNSIGNED vector with
  --         the specified SIZE.

  -- Id: D.4
  function TO_SIGNED (ARG: INTEGER; SIZE: NATURAL) return SIGNED;
    attribute builtin_subprogram of
        TO_SIGNED [INTEGER, NATURAL return SIGNED]: function is "numstd_conv_signed_is";
  -- Result subtype: SIGNED(SIZE-1 downto 0)
  -- Result: Converts an INTEGER to a SIGNED vector of the specified SIZE.

  --============================================================================
  -- Logical Operators
  --============================================================================

  -- Id: L.1
  function "not" (L: UNSIGNED) return UNSIGNED;
    attribute builtin_subprogram of
        "NOT"[UNSIGNED return UNSIGNED]: function is "array_not_1164";
  -- Result subtype: UNSIGNED(L'LENGTH-1 downto 0)
  -- Result: Termwise inversion

  -- Id: L.2
  function "and" (L, R: UNSIGNED) return UNSIGNED;
    attribute builtin_subprogram of
        "AND"[UNSIGNED, UNSIGNED return UNSIGNED]: function is "array_and_1164";
  -- Result subtype: UNSIGNED(L'LENGTH-1 downto 0)
  -- Result: Vector AND operation

  -- Id: L.3
  function "or" (L, R: UNSIGNED) return UNSIGNED;
    attribute builtin_subprogram of
        "OR"[UNSIGNED, UNSIGNED return UNSIGNED]: function is "array_or_1164";
  -- Result subtype: UNSIGNED(L'LENGTH-1 downto 0)
  -- Result: Vector OR operation

  -- Id: L.4
  function "nand" (L, R: UNSIGNED) return UNSIGNED;
    attribute builtin_subprogram of
        "NAND"[UNSIGNED, UNSIGNED return UNSIGNED]: function is "array_nand_1164";
  -- Result subtype: UNSIGNED(L'LENGTH-1 downto 0)
  -- Result: Vector NAND operation

  -- Id: L.5
  function "nor" (L, R: UNSIGNED) return UNSIGNED;
    attribute builtin_subprogram of
        "NOR"[UNSIGNED, UNSIGNED return UNSIGNED]: function is "array_nor_1164";
  -- Result subtype: UNSIGNED(L'LENGTH-1 downto 0)
  -- Result: Vector NOR operation

  -- Id: L.6
  function "xor" (L, R: UNSIGNED) return UNSIGNED;
    attribute builtin_subprogram of
        "XOR"[UNSIGNED, UNSIGNED return UNSIGNED]: function is "array_xor_1164";
  -- Result subtype: UNSIGNED(L'LENGTH-1 downto 0)
  -- Result: Vector XOR operation

  -- ---------------------------------------------------------------------------
  -- Note : Function L.7 is not compatible with VHDL 1076-1987. Comment
  -- out the function (declaration and body) for VHDL 1076-1987 compatibility.
  -- ---------------------------------------------------------------------------
  -- Id: L.7
  function "xnor" (L, R: UNSIGNED) return UNSIGNED;
    attribute builtin_subprogram of
        "XNOR"[UNSIGNED, UNSIGNED return UNSIGNED]: function is "array_xnor_1164";
  -- Result subtype: UNSIGNED(L'LENGTH-1 downto 0)
  -- Result: Vector XNOR operation

  -- Id: L.8
  function "not" (L: SIGNED) return SIGNED;
    attribute builtin_subprogram of
        "NOT"[SIGNED return SIGNED]: function is "array_not_1164";
  -- Result subtype: SIGNED(L'LENGTH-1 downto 0)
  -- Result: Termwise inversion

  -- Id: L.9
  function "and" (L, R: SIGNED) return SIGNED;
    attribute builtin_subprogram of
        "AND"[SIGNED, SIGNED return SIGNED]: function is "array_and_1164";
  -- Result subtype: SIGNED(L'LENGTH-1 downto 0)
  -- Result: Vector AND operation

  -- Id: L.10
  function "or" (L, R: SIGNED) return SIGNED;
    attribute builtin_subprogram of
        "OR"[SIGNED, SIGNED return SIGNED]: function is "array_or_1164";
  -- Result subtype: SIGNED(L'LENGTH-1 downto 0)
  -- Result: Vector OR operation

  -- Id: L.11
  function "nand" (L, R: SIGNED) return SIGNED;
    attribute builtin_subprogram of
        "NAND"[SIGNED, SIGNED return SIGNED]: function is "array_nand_1164";
  -- Result subtype: SIGNED(L'LENGTH-1 downto 0)
  -- Result: Vector NAND operation

  -- Id: L.12
  function "nor" (L, R: SIGNED) return SIGNED;
    attribute builtin_subprogram of
        "NOR"[SIGNED, SIGNED return SIGNED]: function is "array_nor_1164";
  -- Result subtype: SIGNED(L'LENGTH-1 downto 0)
  -- Result: Vector NOR operation

  -- Id: L.13
  function "xor" (L, R: SIGNED) return SIGNED;
    attribute builtin_subprogram of
        "XOR"[SIGNED, SIGNED return SIGNED]: function is "array_xor_1164";
  -- Result subtype: SIGNED(L'LENGTH-1 downto 0)
  -- Result: Vector XOR operation

  -- ---------------------------------------------------------------------------
  -- Note : Function L.14 is not compatible with VHDL 1076-1987. Comment
  -- out the function (declaration and body) for VHDL 1076-1987 compatibility.
  -- ---------------------------------------------------------------------------
  -- Id: L.14
  function "xnor" (L, R: SIGNED) return SIGNED;
    attribute builtin_subprogram of
        "XNOR"[SIGNED, SIGNED return SIGNED]: function is "array_xnor_1164";
  -- Result subtype: SIGNED(L'LENGTH-1 downto 0)
  -- Result: Vector XNOR operation

  --============================================================================
  -- Match Functions
  --============================================================================

  -- Id: M.1
  function STD_MATCH (L, R: STD_ULOGIC) return BOOLEAN;
    attribute builtin_subprogram of
        STD_MATCH[STD_ULOGIC, STD_ULOGIC return BOOLEAN]: function 
		is "numstd_match_xx";
  -- Result subtype: BOOLEAN
  -- Result: terms compared per STD_LOGIC_1164 intent

  -- Id: M.2
  function STD_MATCH (L, R: UNSIGNED) return BOOLEAN;
    attribute builtin_subprogram of
        STD_MATCH[UNSIGNED, UNSIGNED return BOOLEAN]: function 
		is "numstd_array_match_1164";
  -- Result subtype: BOOLEAN
  -- Result: terms compared per STD_LOGIC_1164 intent

  -- Id: M.3
  function STD_MATCH (L, R: SIGNED) return BOOLEAN;
    attribute builtin_subprogram of
        STD_MATCH[SIGNED, SIGNED return BOOLEAN]: function 
		is "numstd_array_match_1164";
  -- Result subtype: BOOLEAN
  -- Result: terms compared per STD_LOGIC_1164 intent

  -- Id: M.4
  function STD_MATCH (L, R: STD_LOGIC_VECTOR) return BOOLEAN;
    attribute builtin_subprogram of
        STD_MATCH[STD_LOGIC_VECTOR, STD_LOGIC_VECTOR return BOOLEAN]: function 
		is "numstd_array_match_1164";
  -- Result subtype: BOOLEAN
  -- Result: terms compared per STD_LOGIC_1164 intent

  -- Id: M.5
  function STD_MATCH (L, R: STD_ULOGIC_VECTOR) return BOOLEAN;
    attribute builtin_subprogram of
        STD_MATCH[STD_ULOGIC_VECTOR, STD_ULOGIC_VECTOR return BOOLEAN]: function 
		is "numstd_array_match_1164";
  -- Result subtype: BOOLEAN
  -- Result: terms compared per STD_LOGIC_1164 intent

  --============================================================================
  -- Translation Functions
  --============================================================================

  -- Id: T.1
  function TO_01 (S: UNSIGNED; XMAP: STD_LOGIC := '0') return UNSIGNED;
    attribute builtin_subprogram of
        TO_01[UNSIGNED, STD_LOGIC return UNSIGNED]: function is "numstd_to01_uu";
  -- Result subtype: UNSIGNED(S'RANGE)
  -- Result: Termwise, 'H' is translated to '1', and 'L' is translated
  --         to '0'. If a value other than '0'|'1'|'H'|'L' is found,
  --         the array is set to (others => XMAP), and a warning is
  --         issued.

  -- Id: T.2
  function TO_01 (S: SIGNED; XMAP: STD_LOGIC := '0') return SIGNED;
    attribute builtin_subprogram of
        TO_01[SIGNED, STD_LOGIC return SIGNED]: function is "numstd_to01_ss";
  -- Result subtype: SIGNED(S'RANGE)
  -- Result: Termwise, 'H' is translated to '1', and 'L' is translated
  --         to '0'. If a value other than '0'|'1'|'H'|'L' is found,
  --         the array is set to (others => XMAP), and a warning is
  --         issued.

end NUMERIC_STD;

