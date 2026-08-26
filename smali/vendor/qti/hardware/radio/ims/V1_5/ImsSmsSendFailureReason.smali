.class public final Lvendor/qti/hardware/radio/ims/V1_5/ImsSmsSendFailureReason;
.super Ljava/lang/Object;
.source "ImsSmsSendFailureReason.java"


# static fields
.field public static final RESULT_CANCELLED:I = 0x17

.field public static final RESULT_ENCODING_ERROR:I = 0x12

.field public static final RESULT_ERROR_FDN_CHECK_FAILURE:I = 0x8

.field public static final RESULT_ERROR_GENERIC_FAILURE:I = 0x1

.field public static final RESULT_ERROR_LIMIT_EXCEEDED:I = 0x5

.field public static final RESULT_ERROR_NONE:I = 0x0

.field public static final RESULT_ERROR_NO_SERVICE:I = 0x4

.field public static final RESULT_ERROR_NULL_PDU:I = 0x3

.field public static final RESULT_ERROR_RADIO_OFF:I = 0x2

.field public static final RESULT_ERROR_SHORT_CODE_NEVER_ALLOWED:I = 0x7

.field public static final RESULT_ERROR_SHORT_CODE_NOT_ALLOWED:I = 0x6

.field public static final RESULT_INTERNAL_ERROR:I = 0x15

.field public static final RESULT_INVALID_ARGUMENTS:I = 0xb

.field public static final RESULT_INVALID_SMSC_ADDRESS:I = 0x13

.field public static final RESULT_INVALID_SMS_FORMAT:I = 0xe

.field public static final RESULT_INVALID_STATE:I = 0xc

.field public static final RESULT_MODEM_ERROR:I = 0x10

.field public static final RESULT_NETWORK_ERROR:I = 0x11

.field public static final RESULT_NETWORK_REJECT:I = 0xa

.field public static final RESULT_NO_MEMORY:I = 0xd

.field public static final RESULT_NO_RESOURCES:I = 0x16

.field public static final RESULT_OPERATION_NOT_ALLOWED:I = 0x14

.field public static final RESULT_RADIO_NOT_AVAILABLE:I = 0x9

.field public static final RESULT_REQUEST_NOT_SUPPORTED:I = 0x18

.field public static final RESULT_SYSTEM_ERROR:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 185
    const-string v1, "RESULT_ERROR_NONE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 187
    const-string v1, "RESULT_ERROR_GENERIC_FAILURE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 191
    const-string v1, "RESULT_ERROR_RADIO_OFF"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x2

    :cond_1
    and-int/lit8 v1, p0, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    .line 195
    const-string v1, "RESULT_ERROR_NULL_PDU"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v3

    :cond_2
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3

    .line 199
    const-string v1, "RESULT_ERROR_NO_SERVICE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x4

    :cond_3
    and-int/lit8 v1, p0, 0x5

    const/4 v3, 0x5

    if-ne v1, v3, :cond_4

    .line 203
    const-string v1, "RESULT_ERROR_LIMIT_EXCEEDED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x5

    :cond_4
    and-int/lit8 v1, p0, 0x6

    const/4 v3, 0x6

    if-ne v1, v3, :cond_5

    .line 207
    const-string v1, "RESULT_ERROR_SHORT_CODE_NOT_ALLOWED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x6

    :cond_5
    and-int/lit8 v1, p0, 0x7

    const/4 v3, 0x7

    if-ne v1, v3, :cond_6

    .line 211
    const-string v1, "RESULT_ERROR_SHORT_CODE_NEVER_ALLOWED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v3

    :cond_6
    and-int/lit8 v1, p0, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_7

    .line 215
    const-string v1, "RESULT_ERROR_FDN_CHECK_FAILURE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x8

    :cond_7
    and-int/lit8 v1, p0, 0x9

    const/16 v3, 0x9

    if-ne v1, v3, :cond_8

    .line 219
    const-string v1, "RESULT_RADIO_NOT_AVAILABLE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x9

    :cond_8
    and-int/lit8 v1, p0, 0xa

    const/16 v3, 0xa

    if-ne v1, v3, :cond_9

    .line 223
    const-string v1, "RESULT_NETWORK_REJECT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xa

    :cond_9
    and-int/lit8 v1, p0, 0xb

    const/16 v3, 0xb

    if-ne v1, v3, :cond_a

    .line 227
    const-string v1, "RESULT_INVALID_ARGUMENTS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xb

    :cond_a
    and-int/lit8 v1, p0, 0xc

    const/16 v3, 0xc

    if-ne v1, v3, :cond_b

    .line 231
    const-string v1, "RESULT_INVALID_STATE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xc

    :cond_b
    and-int/lit8 v1, p0, 0xd

    const/16 v3, 0xd

    if-ne v1, v3, :cond_c

    .line 235
    const-string v1, "RESULT_NO_MEMORY"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xd

    :cond_c
    and-int/lit8 v1, p0, 0xe

    const/16 v3, 0xe

    if-ne v1, v3, :cond_d

    .line 239
    const-string v1, "RESULT_INVALID_SMS_FORMAT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xe

    :cond_d
    and-int/lit8 v1, p0, 0xf

    const/16 v3, 0xf

    if-ne v1, v3, :cond_e

    .line 243
    const-string v1, "RESULT_SYSTEM_ERROR"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v3

    :cond_e
    and-int/lit8 v1, p0, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_f

    .line 247
    const-string v1, "RESULT_MODEM_ERROR"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x10

    :cond_f
    and-int/lit8 v1, p0, 0x11

    const/16 v3, 0x11

    if-ne v1, v3, :cond_10

    .line 251
    const-string v1, "RESULT_NETWORK_ERROR"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x11

    :cond_10
    and-int/lit8 v1, p0, 0x12

    const/16 v3, 0x12

    if-ne v1, v3, :cond_11

    .line 255
    const-string v1, "RESULT_ENCODING_ERROR"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x12

    :cond_11
    and-int/lit8 v1, p0, 0x13

    const/16 v3, 0x13

    if-ne v1, v3, :cond_12

    .line 259
    const-string v1, "RESULT_INVALID_SMSC_ADDRESS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x13

    :cond_12
    and-int/lit8 v1, p0, 0x14

    const/16 v3, 0x14

    if-ne v1, v3, :cond_13

    .line 263
    const-string v1, "RESULT_OPERATION_NOT_ALLOWED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x14

    :cond_13
    and-int/lit8 v1, p0, 0x15

    const/16 v3, 0x15

    if-ne v1, v3, :cond_14

    .line 267
    const-string v1, "RESULT_INTERNAL_ERROR"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x15

    :cond_14
    and-int/lit8 v1, p0, 0x16

    const/16 v3, 0x16

    if-ne v1, v3, :cond_15

    .line 271
    const-string v1, "RESULT_NO_RESOURCES"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x16

    :cond_15
    and-int/lit8 v1, p0, 0x17

    const/16 v3, 0x17

    if-ne v1, v3, :cond_16

    .line 275
    const-string v1, "RESULT_CANCELLED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x17

    :cond_16
    and-int/lit8 v1, p0, 0x18

    const/16 v3, 0x18

    if-ne v1, v3, :cond_17

    .line 279
    const-string v1, "RESULT_REQUEST_NOT_SUPPORTED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x18

    :cond_17
    if-eq p0, v2, :cond_18

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "0x"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    not-int v2, v2

    and-int/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    :cond_18
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    .line 105
    const-string p0, "RESULT_ERROR_NONE"

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 108
    const-string p0, "RESULT_ERROR_GENERIC_FAILURE"

    return-object p0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 111
    const-string p0, "RESULT_ERROR_RADIO_OFF"

    return-object p0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 114
    const-string p0, "RESULT_ERROR_NULL_PDU"

    return-object p0

    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 117
    const-string p0, "RESULT_ERROR_NO_SERVICE"

    return-object p0

    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 120
    const-string p0, "RESULT_ERROR_LIMIT_EXCEEDED"

    return-object p0

    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 123
    const-string p0, "RESULT_ERROR_SHORT_CODE_NOT_ALLOWED"

    return-object p0

    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 126
    const-string p0, "RESULT_ERROR_SHORT_CODE_NEVER_ALLOWED"

    return-object p0

    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    .line 129
    const-string p0, "RESULT_ERROR_FDN_CHECK_FAILURE"

    return-object p0

    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    .line 132
    const-string p0, "RESULT_RADIO_NOT_AVAILABLE"

    return-object p0

    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    .line 135
    const-string p0, "RESULT_NETWORK_REJECT"

    return-object p0

    :cond_a
    const/16 v0, 0xb

    if-ne p0, v0, :cond_b

    .line 138
    const-string p0, "RESULT_INVALID_ARGUMENTS"

    return-object p0

    :cond_b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_c

    .line 141
    const-string p0, "RESULT_INVALID_STATE"

    return-object p0

    :cond_c
    const/16 v0, 0xd

    if-ne p0, v0, :cond_d

    .line 144
    const-string p0, "RESULT_NO_MEMORY"

    return-object p0

    :cond_d
    const/16 v0, 0xe

    if-ne p0, v0, :cond_e

    .line 147
    const-string p0, "RESULT_INVALID_SMS_FORMAT"

    return-object p0

    :cond_e
    const/16 v0, 0xf

    if-ne p0, v0, :cond_f

    .line 150
    const-string p0, "RESULT_SYSTEM_ERROR"

    return-object p0

    :cond_f
    const/16 v0, 0x10

    if-ne p0, v0, :cond_10

    .line 153
    const-string p0, "RESULT_MODEM_ERROR"

    return-object p0

    :cond_10
    const/16 v0, 0x11

    if-ne p0, v0, :cond_11

    .line 156
    const-string p0, "RESULT_NETWORK_ERROR"

    return-object p0

    :cond_11
    const/16 v0, 0x12

    if-ne p0, v0, :cond_12

    .line 159
    const-string p0, "RESULT_ENCODING_ERROR"

    return-object p0

    :cond_12
    const/16 v0, 0x13

    if-ne p0, v0, :cond_13

    .line 162
    const-string p0, "RESULT_INVALID_SMSC_ADDRESS"

    return-object p0

    :cond_13
    const/16 v0, 0x14

    if-ne p0, v0, :cond_14

    .line 165
    const-string p0, "RESULT_OPERATION_NOT_ALLOWED"

    return-object p0

    :cond_14
    const/16 v0, 0x15

    if-ne p0, v0, :cond_15

    .line 168
    const-string p0, "RESULT_INTERNAL_ERROR"

    return-object p0

    :cond_15
    const/16 v0, 0x16

    if-ne p0, v0, :cond_16

    .line 171
    const-string p0, "RESULT_NO_RESOURCES"

    return-object p0

    :cond_16
    const/16 v0, 0x17

    if-ne p0, v0, :cond_17

    .line 174
    const-string p0, "RESULT_CANCELLED"

    return-object p0

    :cond_17
    const/16 v0, 0x18

    if-ne p0, v0, :cond_18

    .line 177
    const-string p0, "RESULT_REQUEST_NOT_SUPPORTED"

    return-object p0

    .line 179
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
