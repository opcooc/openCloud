package com.opencloud.common.jackson;

/**
 * @author LYD
 */

public enum SerializerFeature {
        WriteNullListAsEmpty,
        WriteNullStringAsEmpty,
        WriteNullNumberAsZero,
        WriteNullBooleanAsFalse,
        WriteNullMapAsEmpty;
        public final int mask;

        SerializerFeature() {
            mask = (1 << ordinal());
        }
    }
