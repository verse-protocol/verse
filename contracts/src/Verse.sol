// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "./IVerse.sol";

abstract contract Verse is IVerse {
    bytes32 private _root;
    bytes32 private _protocol;

    constructor(bytes32 protocol_, bytes32 root_) {
	_root = root_;
	_protocol = protocol_;
    }

    function verseRoot() external view virtual override returns (bytes32) {
	return _root;
    }

    function protocol() external view virtual override returns (bytes32) {
	return _protocol;
    }

    function _setRoot(bytes32 root_) internal virtual {
	_root = root_;
    }

    function _setProtocol(bytes32 protocol_) internal virtual {
	_protocol = protocol_;
    }
}
