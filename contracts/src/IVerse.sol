// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

interface IVerse {

    function verseRoot() external view returns (bytes32);

    function protocol() external view returns (bytes32);

    function contentUri(bytes32 node) external view returns (string memory);

    function subversesUri(bytes32 node) external view returns (string memory);
}
