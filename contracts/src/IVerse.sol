// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

interface IVerse {

    function verseRoot() external view returns (bytes32);

    function subverses(bytes32 node) external view returns (bytes32[] memory);

    function protocol() external view returns (bytes32);
}
