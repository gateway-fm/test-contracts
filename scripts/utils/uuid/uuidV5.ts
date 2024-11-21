import { createHash } from "crypto";
import { ethers } from "ethers";

class UUIDv5 {
  /**
   * Generates `uuid` v5 from given `value` and `namespace`
   * @params `value`: reference string
   * @params `namespace`: optional prefix string
   */
  generate(value: string, namespace?: string): string {
    namespace = namespace ?? "0x";
    const hash = createHash("sha1");

    const uuidHash = hash
      .update(
        Buffer.concat([Buffer.from(namespace.replace("0x", ""), "hex"), Buffer.from(value.replace("0x", ""), "hex")]),
      )
      .digest();

    const uuid = new Uint8Array(16);
    for (let i = 0; i < 16; i++) {
      uuid[i] = uuidHash[i];
    }

    uuid[6] = (uuid[6] & 0x0f) | 0x50;
    uuid[8] = (uuid[8] & 0x3f) | 0x80;

    return ethers.hexlify(uuid);
  }

  /**
   * Generates random `uuid` v5
   * @returns hex string uuid representation
   */
  random(): string {
    const uuid = ethers.randomBytes(16);

    uuid[6] = (uuid[6] & 0x0f) | 0x50;
    uuid[8] = (uuid[8] & 0x3f) | 0x80;

    return ethers.hexlify(uuid);
  }

  /**
   * Test if string is a valid uuid v5
   */
  isValid(uuid: string): boolean {
    return /^0x[0-9A-F]{12}[5][0-9A-F]{3}[89AB][0-9A-F]{3}[0-9A-F]{12}$/i.test(uuid);
  }
}

export const uuid = new UUIDv5();
