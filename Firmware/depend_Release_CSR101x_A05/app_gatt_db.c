/*
 * THIS FILE IS AUTOGENERATED, DO NOT EDIT!
 *
 * generated by gattdbgen from depend_Release_CSR101x_A05/app_gatt_db.db_
 */

#include "depend_Release_CSR101x_A05/app_gatt_db.h"

/* GATT database */
uint16 gattDatabase[] = {
    /* 0001: Primary Service 1800 */
    0x0002, 0x0018,
    /* 0002: Characteristic Declaration 2a00 */
    0x3005, 0x0a03, 0x0000, 0x2a00,
    /* 0003: . */
    0xd501, 0x0000,
    /* 0004: Characteristic Declaration 2a01 */
    0x3005, 0x0205, 0x0001, 0x2a00,
    /* 0005: @. */
    0xd402, 0x4003,
    /* 0006: Characteristic Declaration 2a04 */
    0x3005, 0x0207, 0x0004, 0x2a00,
    /* 0007: ......X. */
    0xd408, 0x0800, 0x0800, 0x0000, 0x5802,
    /* 0008: Primary Service 1801 */
    0x0002, 0x0118,
    /* 0009: Primary Service 180d */
    0x0002, 0x0d18,
    /* 000a: Characteristic Declaration 2a37 */
    0x3005, 0x100b, 0x0037, 0x2a00,
    /* 000b: ................. */
    0xd411, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
    /* 000c: Client Characteristic Configuration */
    0x6400,
    /* 000d: Characteristic Declaration 2a38 */
    0x3005, 0x020e, 0x0038, 0x2a00,
    /* 000e: . */
    0xd401, 0x0100,
    /* 000f: Characteristic Declaration 2a39 */
    0x3005, 0x0810, 0x0039, 0x2a00,
    /* 0010: . */
    0xd401, 0x0000,
    /* 0011: Primary Service 180f */
    0x0002, 0x0f18,
    /* 0012: Characteristic Declaration 2a19 */
    0x3005, 0x1213, 0x0019, 0x2a00,
    /* 0013: . */
    0xd401, 0x0000,
    /* 0014: Client Characteristic Configuration */
    0x6400,
    /* 0015: Primary Service 180a */
    0x0002, 0x0a18,
    /* 0016: Characteristic Declaration 2a25 */
    0x3005, 0x0217, 0x0025, 0x2a00,
    /* 0017: BLE-HR SENSOR-001 */
    0xd411, 0x424c, 0x452d, 0x4852, 0x2053, 0x454e, 0x534f, 0x522d, 0x3030, 0x3100,
    /* 0018: Characteristic Declaration 2a27 */
    0x3005, 0x0219, 0x0027, 0x2a00,
    /* 0019: CSR101x A05 */
    0xd40b, 0x4353, 0x5231, 0x3031, 0x7820, 0x4130, 0x3500,
    /* 001a: Characteristic Declaration 2a26 */
    0x3005, 0x021b, 0x0026, 0x2a00,
    /* 001b: CSR uEnergy SDK 2.3.0 */
    0xd415, 0x4353, 0x5220, 0x7545, 0x6e65, 0x7267, 0x7920, 0x5344, 0x4b20, 0x322e, 0x332e, 0x3000,
    /* 001c: Characteristic Declaration 2a28 */
    0x3005, 0x021d, 0x0028, 0x2a00,
    /* 001d: Application version 2.3.0.0 */
    0xd41b, 0x4170, 0x706c, 0x6963, 0x6174, 0x696f, 0x6e20, 0x7665, 0x7273, 0x696f, 0x6e20, 0x322e, 0x332e, 0x302e, 0x3000,
    /* 001e: Characteristic Declaration 2a29 */
    0x3005, 0x021f, 0x0029, 0x2a00,
    /* 001f: Cambridge Silicon Radio */
    0xd417, 0x4361, 0x6d62, 0x7269, 0x6467, 0x6520, 0x5369, 0x6c69, 0x636f, 0x6e20, 0x5261, 0x6469, 0x6f00,
    /* 0020: Characteristic Declaration 2a50 */
    0x3005, 0x0221, 0x0050, 0x2a00,
    /* 0021: ...L... */
    0xd407, 0x010a, 0x004c, 0x0100, 0x0100,
};

uint16 *GattGetDatabase(uint16 *len)
{
    *len = sizeof(gattDatabase);
    return gattDatabase;
}

/* End-of-File */