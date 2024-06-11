// SPDX-License-Identifier: MIT
pragma solidity >=0.8.21;

/* Autogenerated file. Do not edit manually. */

// Import schema type
import { SchemaType } from "@latticexyz/schema-type/src/solidity/SchemaType.sol";

// Import store internals
import { IStore } from "@latticexyz/store/src/IStore.sol";
import { StoreSwitch } from "@latticexyz/store/src/StoreSwitch.sol";
import { StoreCore } from "@latticexyz/store/src/StoreCore.sol";
import { Bytes } from "@latticexyz/store/src/Bytes.sol";
import { Memory } from "@latticexyz/store/src/Memory.sol";
import { SliceLib } from "@latticexyz/store/src/Slice.sol";
import { EncodeArray } from "@latticexyz/store/src/tightcoder/EncodeArray.sol";
import { FieldLayout, FieldLayoutLib } from "@latticexyz/store/src/FieldLayout.sol";
import { Schema, SchemaLib } from "@latticexyz/store/src/Schema.sol";
import { PackedCounter, PackedCounterLib } from "@latticexyz/store/src/PackedCounter.sol";
import { ResourceId } from "@latticexyz/store/src/ResourceId.sol";
import { RESOURCE_TABLE, RESOURCE_OFFCHAIN_TABLE } from "@latticexyz/store/src/storeResourceTypes.sol";

ResourceId constant _tableId = ResourceId.wrap(
  bytes32(abi.encodePacked(RESOURCE_TABLE, bytes14(""), bytes16("MyTableWithTwoKe")))
);
ResourceId constant MyTableWithTwoKeysTableId = _tableId;

FieldLayout constant _fieldLayout = FieldLayout.wrap(
  0x0008020004040000000000000000000000000000000000000000000000000000
);

struct MyTableWithTwoKeysData {
  uint32 value1;
  uint32 value2;
}

library MyTableWithTwoKeys {
  /**
   * @notice Get the table values' field layout.
   * @return _fieldLayout The field layout for the table.
   */
  function getFieldLayout() internal pure returns (FieldLayout) {
    return _fieldLayout;
  }

  /**
   * @notice Get the table's key schema.
   * @return _keySchema The key schema for the table.
   */
  function getKeySchema() internal pure returns (Schema) {
    SchemaType[] memory _keySchema = new SchemaType[](2);
    _keySchema[0] = SchemaType.BYTES32;
    _keySchema[1] = SchemaType.BYTES32;

    return SchemaLib.encode(_keySchema);
  }

  /**
   * @notice Get the table's value schema.
   * @return _valueSchema The value schema for the table.
   */
  function getValueSchema() internal pure returns (Schema) {
    SchemaType[] memory _valueSchema = new SchemaType[](2);
    _valueSchema[0] = SchemaType.UINT32;
    _valueSchema[1] = SchemaType.UINT32;

    return SchemaLib.encode(_valueSchema);
  }

  /**
   * @notice Get the table's key field names.
   * @return keyNames An array of strings with the names of key fields.
   */
  function getKeyNames() internal pure returns (string[] memory keyNames) {
    keyNames = new string[](2);
    keyNames[0] = "key1";
    keyNames[1] = "key2";
  }

  /**
   * @notice Get the table's value field names.
   * @return fieldNames An array of strings with the names of value fields.
   */
  function getFieldNames() internal pure returns (string[] memory fieldNames) {
    fieldNames = new string[](2);
    fieldNames[0] = "value1";
    fieldNames[1] = "value2";
  }

  /**
   * @notice Register the table with its config.
   */
  function register() internal {
    StoreSwitch.registerTable(_tableId, _fieldLayout, getKeySchema(), getValueSchema(), getKeyNames(), getFieldNames());
  }

  /**
   * @notice Register the table with its config.
   */
  function _register() internal {
    StoreCore.registerTable(_tableId, _fieldLayout, getKeySchema(), getValueSchema(), getKeyNames(), getFieldNames());
  }

  /**
   * @notice Register the table with its config (using the specified store).
   */
  function register(IStore _store) internal {
    _store.registerTable(_tableId, _fieldLayout, getKeySchema(), getValueSchema(), getKeyNames(), getFieldNames());
  }

  /**
   * @notice Get value1.
   */
  function getValue1(bytes32 key1, bytes32 key2) internal view returns (uint32 value1) {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = key1;
    _keyTuple[1] = key2;

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 0, _fieldLayout);
    return (uint32(bytes4(_blob)));
  }

  /**
   * @notice Get value1.
   */
  function _getValue1(bytes32 key1, bytes32 key2) internal view returns (uint32 value1) {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = key1;
    _keyTuple[1] = key2;

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 0, _fieldLayout);
    return (uint32(bytes4(_blob)));
  }

  /**
   * @notice Get value1 (using the specified store).
   */
  function getValue1(IStore _store, bytes32 key1, bytes32 key2) internal view returns (uint32 value1) {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = key1;
    _keyTuple[1] = key2;

    bytes32 _blob = _store.getStaticField(_tableId, _keyTuple, 0, _fieldLayout);
    return (uint32(bytes4(_blob)));
  }

  /**
   * @notice Set value1.
   */
  function setValue1(bytes32 key1, bytes32 key2, uint32 value1) internal {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = key1;
    _keyTuple[1] = key2;

    StoreSwitch.setStaticField(_tableId, _keyTuple, 0, abi.encodePacked((value1)), _fieldLayout);
  }

  /**
   * @notice Set value1.
   */
  function _setValue1(bytes32 key1, bytes32 key2, uint32 value1) internal {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = key1;
    _keyTuple[1] = key2;

    StoreCore.setStaticField(_tableId, _keyTuple, 0, abi.encodePacked((value1)), _fieldLayout);
  }

  /**
   * @notice Set value1 (using the specified store).
   */
  function setValue1(IStore _store, bytes32 key1, bytes32 key2, uint32 value1) internal {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = key1;
    _keyTuple[1] = key2;

    _store.setStaticField(_tableId, _keyTuple, 0, abi.encodePacked((value1)), _fieldLayout);
  }

  /**
   * @notice Get value2.
   */
  function getValue2(bytes32 key1, bytes32 key2) internal view returns (uint32 value2) {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = key1;
    _keyTuple[1] = key2;

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 1, _fieldLayout);
    return (uint32(bytes4(_blob)));
  }

  /**
   * @notice Get value2.
   */
  function _getValue2(bytes32 key1, bytes32 key2) internal view returns (uint32 value2) {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = key1;
    _keyTuple[1] = key2;

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 1, _fieldLayout);
    return (uint32(bytes4(_blob)));
  }

  /**
   * @notice Get value2 (using the specified store).
   */
  function getValue2(IStore _store, bytes32 key1, bytes32 key2) internal view returns (uint32 value2) {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = key1;
    _keyTuple[1] = key2;

    bytes32 _blob = _store.getStaticField(_tableId, _keyTuple, 1, _fieldLayout);
    return (uint32(bytes4(_blob)));
  }

  /**
   * @notice Set value2.
   */
  function setValue2(bytes32 key1, bytes32 key2, uint32 value2) internal {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = key1;
    _keyTuple[1] = key2;

    StoreSwitch.setStaticField(_tableId, _keyTuple, 1, abi.encodePacked((value2)), _fieldLayout);
  }

  /**
   * @notice Set value2.
   */
  function _setValue2(bytes32 key1, bytes32 key2, uint32 value2) internal {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = key1;
    _keyTuple[1] = key2;

    StoreCore.setStaticField(_tableId, _keyTuple, 1, abi.encodePacked((value2)), _fieldLayout);
  }

  /**
   * @notice Set value2 (using the specified store).
   */
  function setValue2(IStore _store, bytes32 key1, bytes32 key2, uint32 value2) internal {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = key1;
    _keyTuple[1] = key2;

    _store.setStaticField(_tableId, _keyTuple, 1, abi.encodePacked((value2)), _fieldLayout);
  }

  /**
   * @notice Get the full data.
   */
  function get(bytes32 key1, bytes32 key2) internal view returns (MyTableWithTwoKeysData memory _table) {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = key1;
    _keyTuple[1] = key2;

    (bytes memory _staticData, PackedCounter _encodedLengths, bytes memory _dynamicData) = StoreSwitch.getRecord(
      _tableId,
      _keyTuple,
      _fieldLayout
    );
    return decode(_staticData, _encodedLengths, _dynamicData);
  }

  /**
   * @notice Get the full data.
   */
  function _get(bytes32 key1, bytes32 key2) internal view returns (MyTableWithTwoKeysData memory _table) {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = key1;
    _keyTuple[1] = key2;

    (bytes memory _staticData, PackedCounter _encodedLengths, bytes memory _dynamicData) = StoreCore.getRecord(
      _tableId,
      _keyTuple,
      _fieldLayout
    );
    return decode(_staticData, _encodedLengths, _dynamicData);
  }

  /**
   * @notice Get the full data (using the specified store).
   */
  function get(IStore _store, bytes32 key1, bytes32 key2) internal view returns (MyTableWithTwoKeysData memory _table) {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = key1;
    _keyTuple[1] = key2;

    (bytes memory _staticData, PackedCounter _encodedLengths, bytes memory _dynamicData) = _store.getRecord(
      _tableId,
      _keyTuple,
      _fieldLayout
    );
    return decode(_staticData, _encodedLengths, _dynamicData);
  }

  /**
   * @notice Set the full data using individual values.
   */
  function set(bytes32 key1, bytes32 key2, uint32 value1, uint32 value2) internal {
    bytes memory _staticData = encodeStatic(value1, value2);

    PackedCounter _encodedLengths;
    bytes memory _dynamicData;

    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = key1;
    _keyTuple[1] = key2;

    StoreSwitch.setRecord(_tableId, _keyTuple, _staticData, _encodedLengths, _dynamicData);
  }

  /**
   * @notice Set the full data using individual values.
   */
  function _set(bytes32 key1, bytes32 key2, uint32 value1, uint32 value2) internal {
    bytes memory _staticData = encodeStatic(value1, value2);

    PackedCounter _encodedLengths;
    bytes memory _dynamicData;

    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = key1;
    _keyTuple[1] = key2;

    StoreCore.setRecord(_tableId, _keyTuple, _staticData, _encodedLengths, _dynamicData, _fieldLayout);
  }

  /**
   * @notice Set the full data using individual values (using the specified store).
   */
  function set(IStore _store, bytes32 key1, bytes32 key2, uint32 value1, uint32 value2) internal {
    bytes memory _staticData = encodeStatic(value1, value2);

    PackedCounter _encodedLengths;
    bytes memory _dynamicData;

    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = key1;
    _keyTuple[1] = key2;

    _store.setRecord(_tableId, _keyTuple, _staticData, _encodedLengths, _dynamicData);
  }

  /**
   * @notice Set the full data using the data struct.
   */
  function set(bytes32 key1, bytes32 key2, MyTableWithTwoKeysData memory _table) internal {
    bytes memory _staticData = encodeStatic(_table.value1, _table.value2);

    PackedCounter _encodedLengths;
    bytes memory _dynamicData;

    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = key1;
    _keyTuple[1] = key2;

    StoreSwitch.setRecord(_tableId, _keyTuple, _staticData, _encodedLengths, _dynamicData);
  }

  /**
   * @notice Set the full data using the data struct.
   */
  function _set(bytes32 key1, bytes32 key2, MyTableWithTwoKeysData memory _table) internal {
    bytes memory _staticData = encodeStatic(_table.value1, _table.value2);

    PackedCounter _encodedLengths;
    bytes memory _dynamicData;

    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = key1;
    _keyTuple[1] = key2;

    StoreCore.setRecord(_tableId, _keyTuple, _staticData, _encodedLengths, _dynamicData, _fieldLayout);
  }

  /**
   * @notice Set the full data using the data struct (using the specified store).
   */
  function set(IStore _store, bytes32 key1, bytes32 key2, MyTableWithTwoKeysData memory _table) internal {
    bytes memory _staticData = encodeStatic(_table.value1, _table.value2);

    PackedCounter _encodedLengths;
    bytes memory _dynamicData;

    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = key1;
    _keyTuple[1] = key2;

    _store.setRecord(_tableId, _keyTuple, _staticData, _encodedLengths, _dynamicData);
  }

  /**
   * @notice Decode the tightly packed blob of static data using this table's field layout.
   */
  function decodeStatic(bytes memory _blob) internal pure returns (uint32 value1, uint32 value2) {
    value1 = (uint32(Bytes.slice4(_blob, 0)));

    value2 = (uint32(Bytes.slice4(_blob, 4)));
  }

  /**
   * @notice Decode the tightly packed blobs using this table's field layout.
   * @param _staticData Tightly packed static fields.
   *
   *
   */
  function decode(
    bytes memory _staticData,
    PackedCounter,
    bytes memory
  ) internal pure returns (MyTableWithTwoKeysData memory _table) {
    (_table.value1, _table.value2) = decodeStatic(_staticData);
  }

  /**
   * @notice Delete all data for given keys.
   */
  function deleteRecord(bytes32 key1, bytes32 key2) internal {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = key1;
    _keyTuple[1] = key2;

    StoreSwitch.deleteRecord(_tableId, _keyTuple);
  }

  /**
   * @notice Delete all data for given keys.
   */
  function _deleteRecord(bytes32 key1, bytes32 key2) internal {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = key1;
    _keyTuple[1] = key2;

    StoreCore.deleteRecord(_tableId, _keyTuple, _fieldLayout);
  }

  /**
   * @notice Delete all data for given keys (using the specified store).
   */
  function deleteRecord(IStore _store, bytes32 key1, bytes32 key2) internal {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = key1;
    _keyTuple[1] = key2;

    _store.deleteRecord(_tableId, _keyTuple);
  }

  /**
   * @notice Tightly pack static (fixed length) data using this table's schema.
   * @return The static data, encoded into a sequence of bytes.
   */
  function encodeStatic(uint32 value1, uint32 value2) internal pure returns (bytes memory) {
    return abi.encodePacked(value1, value2);
  }

  /**
   * @notice Encode all of a record's fields.
   * @return The static (fixed length) data, encoded into a sequence of bytes.
   * @return The lengths of the dynamic fields (packed into a single bytes32 value).
   * @return The dyanmic (variable length) data, encoded into a sequence of bytes.
   */
  function encode(uint32 value1, uint32 value2) internal pure returns (bytes memory, PackedCounter, bytes memory) {
    bytes memory _staticData = encodeStatic(value1, value2);

    PackedCounter _encodedLengths;
    bytes memory _dynamicData;

    return (_staticData, _encodedLengths, _dynamicData);
  }

  /**
   * @notice Encode keys as a bytes32 array using this table's field layout.
   */
  function encodeKeyTuple(bytes32 key1, bytes32 key2) internal pure returns (bytes32[] memory) {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = key1;
    _keyTuple[1] = key2;

    return _keyTuple;
  }
}