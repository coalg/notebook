import { describe, expect, it } from 'bun:test';

describe('math', () => {
  it('adds numbers', () => {
    const result = 1 + 2;
    expect(result).toBe(3);
  });
});