// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../src/V1_ChappelRoan.sol";
import "../src/V2_ArianaGrande.sol";
import "../src/V3_SabrinaCarpenter.sol";
import "../src/V4_NDeaDavenport.sol";
import "../src/V5_Electrizante.sol";

contract GasTest is Test {
    V1_ChappelRoan v1;
    V2_ArianaGrande v2;
    V3_SabrinaCarpenter v3;
    V4_NDeaDavenport v4;
    V5_Electrizante v5;

    function setUp() public {
        v1 = new V1_ChappelRoan();
        v2 = new V2_ArianaGrande();
        v3 = new V3_SabrinaCarpenter();
        v4 = new V4_NDeaDavenport();
        v5 = new V5_Electrizante();
    }

    function test_Gas_V1_10() public { v1.calculateSum(10); }
    function test_Gas_V1_100() public { v1.calculateSum(100); }
    
    function test_Gas_V2_10() public { v2.calculateSum(10); }
    function test_Gas_V2_100() public { v2.calculateSum(100); }

    function test_Gas_V3_10() public { v3.calculateSum(10); }
    function test_Gas_V3_100() public { v3.calculateSum(100); }

    function test_Gas_V4_10() public { v4.calculateSum(10); }
    function test_Gas_V4_100() public { v4.calculateSum(100); }

    function test_Gas_V5_10() public { v5.calculateSum(10); }
    function test_Gas_V5_100() public { v5.calculateSum(100); }
}
