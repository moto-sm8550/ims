.class public final Lvendor/qti/hardware/radio/ims/V1_0/CallFailCause;
.super Ljava/lang/Object;
.source "CallFailCause.java"


# static fields
.field public static final CALL_FAIL_ACCESS_CLASS_BLOCKED:I = 0x201

.field public static final CALL_FAIL_ANSWERED_ELSEWHERE:I = 0x1fe

.field public static final CALL_FAIL_BLACKLISTED_CALL_ID:I = 0x1f8

.field public static final CALL_FAIL_BUSY:I = 0x2

.field public static final CALL_FAIL_CALL_BARRED:I = 0x6

.field public static final CALL_FAIL_CAUSE_CALL_PULLED:I = 0x200

.field public static final CALL_FAIL_CONGESTION:I = 0x4

.field public static final CALL_FAIL_CS_RETRY_REQUIRED:I = 0x1f9

.field public static final CALL_FAIL_DIAL_MODIFIED_TO_DIAL:I = 0xb

.field public static final CALL_FAIL_DIAL_MODIFIED_TO_DIAL_VIDEO:I = 0x21f

.field public static final CALL_FAIL_DIAL_MODIFIED_TO_SS:I = 0xa

.field public static final CALL_FAIL_DIAL_MODIFIED_TO_USSD:I = 0x9

.field public static final CALL_FAIL_DIAL_VIDEO_MODIFIED_TO_DIAL:I = 0x220

.field public static final CALL_FAIL_DIAL_VIDEO_MODIFIED_TO_DIAL_VIDEO:I = 0x221

.field public static final CALL_FAIL_DIAL_VIDEO_MODIFIED_TO_SS:I = 0x222

.field public static final CALL_FAIL_DIAL_VIDEO_MODIFIED_TO_USSD:I = 0x223

.field public static final CALL_FAIL_EMERGENCY_PERM_FAILURE:I = 0xd

.field public static final CALL_FAIL_EMERGENCY_TEMP_FAILURE:I = 0xc

.field public static final CALL_FAIL_ERROR_UNSPECIFIED:I = 0x224

.field public static final CALL_FAIL_FDN_BLOCKED:I = 0x7

.field public static final CALL_FAIL_FEATURE_UNAVAILABLE:I = 0x1fb

.field public static final CALL_FAIL_HOLD_REINVITE_COLLISION:I = 0x21e

.field public static final CALL_FAIL_HOLD_RESUME_CANCELED:I = 0x21d

.field public static final CALL_FAIL_HOLD_RESUME_FAILED:I = 0x21c

.field public static final CALL_FAIL_HO_NOT_FEASIBLE:I = 0xe

.field public static final CALL_FAIL_IMEI_NOT_ACCEPTED:I = 0x8

.field public static final CALL_FAIL_INCOMPATIBILITY_DESTINATION:I = 0x5

.field public static final CALL_FAIL_INVALID:I = 0x225

.field public static final CALL_FAIL_LOW_BATTERY:I = 0x1f7

.field public static final CALL_FAIL_MEDIA_INIT_FAILED:I = 0x218

.field public static final CALL_FAIL_MEDIA_NOT_ACCEPTABLE:I = 0x21a

.field public static final CALL_FAIL_MEDIA_NO_DATA:I = 0x219

.field public static final CALL_FAIL_MEDIA_UNSPECIFIED_ERROR:I = 0x21b

.field public static final CALL_FAIL_MISC:I = 0x1fd

.field public static final CALL_FAIL_NETWORK_UNAVAILABLE:I = 0x1fa

.field public static final CALL_FAIL_NORMAL:I = 0x1

.field public static final CALL_FAIL_NORMAL_UNSPECIFIED:I = 0x3

.field public static final CALL_FAIL_PULL_OUT_OF_SYNC:I = 0x1ff

.field public static final CALL_FAIL_SIP_BAD_ADDRESS:I = 0x209

.field public static final CALL_FAIL_SIP_BAD_REQUEST:I = 0x203

.field public static final CALL_FAIL_SIP_BUSY:I = 0x20a

.field public static final CALL_FAIL_SIP_ERROR:I = 0x1fc

.field public static final CALL_FAIL_SIP_FORBIDDEN:I = 0x204

.field public static final CALL_FAIL_SIP_GLOBAL_ERROR:I = 0x217

.field public static final CALL_FAIL_SIP_NOT_ACCEPTABLE:I = 0x20c

.field public static final CALL_FAIL_SIP_NOT_FOUND:I = 0x205

.field public static final CALL_FAIL_SIP_NOT_REACHABLE:I = 0x20d

.field public static final CALL_FAIL_SIP_NOT_SUPPORTED:I = 0x206

.field public static final CALL_FAIL_SIP_REDIRECTED:I = 0x202

.field public static final CALL_FAIL_SIP_REQUEST_CANCELLED:I = 0x20b

.field public static final CALL_FAIL_SIP_REQUEST_TIMEOUT:I = 0x207

.field public static final CALL_FAIL_SIP_SERVER_BAD_GATEWAY:I = 0x210

.field public static final CALL_FAIL_SIP_SERVER_INTERNAL_ERROR:I = 0x20e

.field public static final CALL_FAIL_SIP_SERVER_MESSAGE_TOOLARGE:I = 0x214

.field public static final CALL_FAIL_SIP_SERVER_NOT_IMPLEMENTED:I = 0x20f

.field public static final CALL_FAIL_SIP_SERVER_PRECONDITION_FAILURE:I = 0x215

.field public static final CALL_FAIL_SIP_SERVER_TIMEOUT:I = 0x212

.field public static final CALL_FAIL_SIP_SERVER_VERSION_UNSUPPORTED:I = 0x213

.field public static final CALL_FAIL_SIP_SERVICE_UNAVAILABLE:I = 0x211

.field public static final CALL_FAIL_SIP_TEMPORARILY_UNAVAILABLE:I = 0x208

.field public static final CALL_FAIL_SIP_USER_REJECTED:I = 0x216

.field public static final CALL_FAIL_UNOBTAINABLE_NUMBER:I = 0x0

.field public static final CALL_FAIL_USER_BUSY:I = 0x1f5

.field public static final CALL_FAIL_USER_REJECT:I = 0x1f6


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 268
    .local v1, "flipped":I
    const-string v2, "CALL_FAIL_UNOBTAINABLE_NUMBER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 270
    const-string v2, "CALL_FAIL_NORMAL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    or-int/lit8 v1, v1, 0x1

    .line 273
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 274
    const-string v2, "CALL_FAIL_BUSY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    or-int/lit8 v1, v1, 0x2

    .line 277
    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 278
    const-string v2, "CALL_FAIL_NORMAL_UNSPECIFIED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    or-int/lit8 v1, v1, 0x3

    .line 281
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 282
    const-string v2, "CALL_FAIL_CONGESTION"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    or-int/lit8 v1, v1, 0x4

    .line 285
    :cond_3
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 286
    const-string v2, "CALL_FAIL_INCOMPATIBILITY_DESTINATION"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    or-int/lit8 v1, v1, 0x5

    .line 289
    :cond_4
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 290
    const-string v2, "CALL_FAIL_CALL_BARRED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    or-int/lit8 v1, v1, 0x6

    .line 293
    :cond_5
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    .line 294
    const-string v2, "CALL_FAIL_FDN_BLOCKED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    or-int/lit8 v1, v1, 0x7

    .line 297
    :cond_6
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_7

    .line 298
    const-string v2, "CALL_FAIL_IMEI_NOT_ACCEPTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    or-int/lit8 v1, v1, 0x8

    .line 301
    :cond_7
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_8

    .line 302
    const-string v2, "CALL_FAIL_DIAL_MODIFIED_TO_USSD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    or-int/lit8 v1, v1, 0x9

    .line 305
    :cond_8
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_9

    .line 306
    const-string v2, "CALL_FAIL_DIAL_MODIFIED_TO_SS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    or-int/lit8 v1, v1, 0xa

    .line 309
    :cond_9
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_a

    .line 310
    const-string v2, "CALL_FAIL_DIAL_MODIFIED_TO_DIAL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    or-int/lit8 v1, v1, 0xb

    .line 313
    :cond_a
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_b

    .line 314
    const-string v2, "CALL_FAIL_EMERGENCY_TEMP_FAILURE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    or-int/lit8 v1, v1, 0xc

    .line 317
    :cond_b
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_c

    .line 318
    const-string v2, "CALL_FAIL_EMERGENCY_PERM_FAILURE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    or-int/lit8 v1, v1, 0xd

    .line 321
    :cond_c
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_d

    .line 322
    const-string v2, "CALL_FAIL_HO_NOT_FEASIBLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    or-int/lit8 v1, v1, 0xe

    .line 325
    :cond_d
    and-int/lit16 v2, p0, 0x1f5

    const/16 v3, 0x1f5

    if-ne v2, v3, :cond_e

    .line 326
    const-string v2, "CALL_FAIL_USER_BUSY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    or-int/lit16 v1, v1, 0x1f5

    .line 329
    :cond_e
    and-int/lit16 v2, p0, 0x1f6

    const/16 v3, 0x1f6

    if-ne v2, v3, :cond_f

    .line 330
    const-string v2, "CALL_FAIL_USER_REJECT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    or-int/lit16 v1, v1, 0x1f6

    .line 333
    :cond_f
    and-int/lit16 v2, p0, 0x1f7

    const/16 v3, 0x1f7

    if-ne v2, v3, :cond_10

    .line 334
    const-string v2, "CALL_FAIL_LOW_BATTERY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    or-int/lit16 v1, v1, 0x1f7

    .line 337
    :cond_10
    and-int/lit16 v2, p0, 0x1f8

    const/16 v3, 0x1f8

    if-ne v2, v3, :cond_11

    .line 338
    const-string v2, "CALL_FAIL_BLACKLISTED_CALL_ID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    or-int/lit16 v1, v1, 0x1f8

    .line 341
    :cond_11
    and-int/lit16 v2, p0, 0x1f9

    const/16 v3, 0x1f9

    if-ne v2, v3, :cond_12

    .line 342
    const-string v2, "CALL_FAIL_CS_RETRY_REQUIRED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    or-int/lit16 v1, v1, 0x1f9

    .line 345
    :cond_12
    and-int/lit16 v2, p0, 0x1fa

    const/16 v3, 0x1fa

    if-ne v2, v3, :cond_13

    .line 346
    const-string v2, "CALL_FAIL_NETWORK_UNAVAILABLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    or-int/lit16 v1, v1, 0x1fa

    .line 349
    :cond_13
    and-int/lit16 v2, p0, 0x1fb

    const/16 v3, 0x1fb

    if-ne v2, v3, :cond_14

    .line 350
    const-string v2, "CALL_FAIL_FEATURE_UNAVAILABLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    or-int/lit16 v1, v1, 0x1fb

    .line 353
    :cond_14
    and-int/lit16 v2, p0, 0x1fc

    const/16 v3, 0x1fc

    if-ne v2, v3, :cond_15

    .line 354
    const-string v2, "CALL_FAIL_SIP_ERROR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    or-int/lit16 v1, v1, 0x1fc

    .line 357
    :cond_15
    and-int/lit16 v2, p0, 0x1fd

    const/16 v3, 0x1fd

    if-ne v2, v3, :cond_16

    .line 358
    const-string v2, "CALL_FAIL_MISC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    or-int/lit16 v1, v1, 0x1fd

    .line 361
    :cond_16
    and-int/lit16 v2, p0, 0x1fe

    const/16 v3, 0x1fe

    if-ne v2, v3, :cond_17

    .line 362
    const-string v2, "CALL_FAIL_ANSWERED_ELSEWHERE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    or-int/lit16 v1, v1, 0x1fe

    .line 365
    :cond_17
    and-int/lit16 v2, p0, 0x1ff

    const/16 v3, 0x1ff

    if-ne v2, v3, :cond_18

    .line 366
    const-string v2, "CALL_FAIL_PULL_OUT_OF_SYNC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    or-int/lit16 v1, v1, 0x1ff

    .line 369
    :cond_18
    and-int/lit16 v2, p0, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_19

    .line 370
    const-string v2, "CALL_FAIL_CAUSE_CALL_PULLED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    or-int/lit16 v1, v1, 0x200

    .line 373
    :cond_19
    and-int/lit16 v2, p0, 0x201

    const/16 v3, 0x201

    if-ne v2, v3, :cond_1a

    .line 374
    const-string v2, "CALL_FAIL_ACCESS_CLASS_BLOCKED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    or-int/lit16 v1, v1, 0x201

    .line 377
    :cond_1a
    and-int/lit16 v2, p0, 0x202

    const/16 v3, 0x202

    if-ne v2, v3, :cond_1b

    .line 378
    const-string v2, "CALL_FAIL_SIP_REDIRECTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    or-int/lit16 v1, v1, 0x202

    .line 381
    :cond_1b
    and-int/lit16 v2, p0, 0x203

    const/16 v3, 0x203

    if-ne v2, v3, :cond_1c

    .line 382
    const-string v2, "CALL_FAIL_SIP_BAD_REQUEST"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    or-int/lit16 v1, v1, 0x203

    .line 385
    :cond_1c
    and-int/lit16 v2, p0, 0x204

    const/16 v3, 0x204

    if-ne v2, v3, :cond_1d

    .line 386
    const-string v2, "CALL_FAIL_SIP_FORBIDDEN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    or-int/lit16 v1, v1, 0x204

    .line 389
    :cond_1d
    and-int/lit16 v2, p0, 0x205

    const/16 v3, 0x205

    if-ne v2, v3, :cond_1e

    .line 390
    const-string v2, "CALL_FAIL_SIP_NOT_FOUND"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    or-int/lit16 v1, v1, 0x205

    .line 393
    :cond_1e
    and-int/lit16 v2, p0, 0x206

    const/16 v3, 0x206

    if-ne v2, v3, :cond_1f

    .line 394
    const-string v2, "CALL_FAIL_SIP_NOT_SUPPORTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    or-int/lit16 v1, v1, 0x206

    .line 397
    :cond_1f
    and-int/lit16 v2, p0, 0x207

    const/16 v3, 0x207

    if-ne v2, v3, :cond_20

    .line 398
    const-string v2, "CALL_FAIL_SIP_REQUEST_TIMEOUT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    or-int/lit16 v1, v1, 0x207

    .line 401
    :cond_20
    and-int/lit16 v2, p0, 0x208

    const/16 v3, 0x208

    if-ne v2, v3, :cond_21

    .line 402
    const-string v2, "CALL_FAIL_SIP_TEMPORARILY_UNAVAILABLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    or-int/lit16 v1, v1, 0x208

    .line 405
    :cond_21
    and-int/lit16 v2, p0, 0x209

    const/16 v3, 0x209

    if-ne v2, v3, :cond_22

    .line 406
    const-string v2, "CALL_FAIL_SIP_BAD_ADDRESS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    or-int/lit16 v1, v1, 0x209

    .line 409
    :cond_22
    and-int/lit16 v2, p0, 0x20a

    const/16 v3, 0x20a

    if-ne v2, v3, :cond_23

    .line 410
    const-string v2, "CALL_FAIL_SIP_BUSY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    or-int/lit16 v1, v1, 0x20a

    .line 413
    :cond_23
    and-int/lit16 v2, p0, 0x20b

    const/16 v3, 0x20b

    if-ne v2, v3, :cond_24

    .line 414
    const-string v2, "CALL_FAIL_SIP_REQUEST_CANCELLED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    or-int/lit16 v1, v1, 0x20b

    .line 417
    :cond_24
    and-int/lit16 v2, p0, 0x20c

    const/16 v3, 0x20c

    if-ne v2, v3, :cond_25

    .line 418
    const-string v2, "CALL_FAIL_SIP_NOT_ACCEPTABLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    or-int/lit16 v1, v1, 0x20c

    .line 421
    :cond_25
    and-int/lit16 v2, p0, 0x20d

    const/16 v3, 0x20d

    if-ne v2, v3, :cond_26

    .line 422
    const-string v2, "CALL_FAIL_SIP_NOT_REACHABLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    or-int/lit16 v1, v1, 0x20d

    .line 425
    :cond_26
    and-int/lit16 v2, p0, 0x20e

    const/16 v3, 0x20e

    if-ne v2, v3, :cond_27

    .line 426
    const-string v2, "CALL_FAIL_SIP_SERVER_INTERNAL_ERROR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    or-int/lit16 v1, v1, 0x20e

    .line 429
    :cond_27
    and-int/lit16 v2, p0, 0x20f

    const/16 v3, 0x20f

    if-ne v2, v3, :cond_28

    .line 430
    const-string v2, "CALL_FAIL_SIP_SERVER_NOT_IMPLEMENTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    or-int/lit16 v1, v1, 0x20f

    .line 433
    :cond_28
    and-int/lit16 v2, p0, 0x210

    const/16 v3, 0x210

    if-ne v2, v3, :cond_29

    .line 434
    const-string v2, "CALL_FAIL_SIP_SERVER_BAD_GATEWAY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    or-int/lit16 v1, v1, 0x210

    .line 437
    :cond_29
    and-int/lit16 v2, p0, 0x211

    const/16 v3, 0x211

    if-ne v2, v3, :cond_2a

    .line 438
    const-string v2, "CALL_FAIL_SIP_SERVICE_UNAVAILABLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    or-int/lit16 v1, v1, 0x211

    .line 441
    :cond_2a
    and-int/lit16 v2, p0, 0x212

    const/16 v3, 0x212

    if-ne v2, v3, :cond_2b

    .line 442
    const-string v2, "CALL_FAIL_SIP_SERVER_TIMEOUT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    or-int/lit16 v1, v1, 0x212

    .line 445
    :cond_2b
    and-int/lit16 v2, p0, 0x213

    const/16 v3, 0x213

    if-ne v2, v3, :cond_2c

    .line 446
    const-string v2, "CALL_FAIL_SIP_SERVER_VERSION_UNSUPPORTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    or-int/lit16 v1, v1, 0x213

    .line 449
    :cond_2c
    and-int/lit16 v2, p0, 0x214

    const/16 v3, 0x214

    if-ne v2, v3, :cond_2d

    .line 450
    const-string v2, "CALL_FAIL_SIP_SERVER_MESSAGE_TOOLARGE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    or-int/lit16 v1, v1, 0x214

    .line 453
    :cond_2d
    and-int/lit16 v2, p0, 0x215

    const/16 v3, 0x215

    if-ne v2, v3, :cond_2e

    .line 454
    const-string v2, "CALL_FAIL_SIP_SERVER_PRECONDITION_FAILURE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    or-int/lit16 v1, v1, 0x215

    .line 457
    :cond_2e
    and-int/lit16 v2, p0, 0x216

    const/16 v3, 0x216

    if-ne v2, v3, :cond_2f

    .line 458
    const-string v2, "CALL_FAIL_SIP_USER_REJECTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    or-int/lit16 v1, v1, 0x216

    .line 461
    :cond_2f
    and-int/lit16 v2, p0, 0x217

    const/16 v3, 0x217

    if-ne v2, v3, :cond_30

    .line 462
    const-string v2, "CALL_FAIL_SIP_GLOBAL_ERROR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    or-int/lit16 v1, v1, 0x217

    .line 465
    :cond_30
    and-int/lit16 v2, p0, 0x218

    const/16 v3, 0x218

    if-ne v2, v3, :cond_31

    .line 466
    const-string v2, "CALL_FAIL_MEDIA_INIT_FAILED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    or-int/lit16 v1, v1, 0x218

    .line 469
    :cond_31
    and-int/lit16 v2, p0, 0x219

    const/16 v3, 0x219

    if-ne v2, v3, :cond_32

    .line 470
    const-string v2, "CALL_FAIL_MEDIA_NO_DATA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    or-int/lit16 v1, v1, 0x219

    .line 473
    :cond_32
    and-int/lit16 v2, p0, 0x21a

    const/16 v3, 0x21a

    if-ne v2, v3, :cond_33

    .line 474
    const-string v2, "CALL_FAIL_MEDIA_NOT_ACCEPTABLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    or-int/lit16 v1, v1, 0x21a

    .line 477
    :cond_33
    and-int/lit16 v2, p0, 0x21b

    const/16 v3, 0x21b

    if-ne v2, v3, :cond_34

    .line 478
    const-string v2, "CALL_FAIL_MEDIA_UNSPECIFIED_ERROR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    or-int/lit16 v1, v1, 0x21b

    .line 481
    :cond_34
    and-int/lit16 v2, p0, 0x21c

    const/16 v3, 0x21c

    if-ne v2, v3, :cond_35

    .line 482
    const-string v2, "CALL_FAIL_HOLD_RESUME_FAILED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    or-int/lit16 v1, v1, 0x21c

    .line 485
    :cond_35
    and-int/lit16 v2, p0, 0x21d

    const/16 v3, 0x21d

    if-ne v2, v3, :cond_36

    .line 486
    const-string v2, "CALL_FAIL_HOLD_RESUME_CANCELED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    or-int/lit16 v1, v1, 0x21d

    .line 489
    :cond_36
    and-int/lit16 v2, p0, 0x21e

    const/16 v3, 0x21e

    if-ne v2, v3, :cond_37

    .line 490
    const-string v2, "CALL_FAIL_HOLD_REINVITE_COLLISION"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    or-int/lit16 v1, v1, 0x21e

    .line 493
    :cond_37
    and-int/lit16 v2, p0, 0x21f

    const/16 v3, 0x21f

    if-ne v2, v3, :cond_38

    .line 494
    const-string v2, "CALL_FAIL_DIAL_MODIFIED_TO_DIAL_VIDEO"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    or-int/lit16 v1, v1, 0x21f

    .line 497
    :cond_38
    and-int/lit16 v2, p0, 0x220

    const/16 v3, 0x220

    if-ne v2, v3, :cond_39

    .line 498
    const-string v2, "CALL_FAIL_DIAL_VIDEO_MODIFIED_TO_DIAL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    or-int/lit16 v1, v1, 0x220

    .line 501
    :cond_39
    and-int/lit16 v2, p0, 0x221

    const/16 v3, 0x221

    if-ne v2, v3, :cond_3a

    .line 502
    const-string v2, "CALL_FAIL_DIAL_VIDEO_MODIFIED_TO_DIAL_VIDEO"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    or-int/lit16 v1, v1, 0x221

    .line 505
    :cond_3a
    and-int/lit16 v2, p0, 0x222

    const/16 v3, 0x222

    if-ne v2, v3, :cond_3b

    .line 506
    const-string v2, "CALL_FAIL_DIAL_VIDEO_MODIFIED_TO_SS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    or-int/lit16 v1, v1, 0x222

    .line 509
    :cond_3b
    and-int/lit16 v2, p0, 0x223

    const/16 v3, 0x223

    if-ne v2, v3, :cond_3c

    .line 510
    const-string v2, "CALL_FAIL_DIAL_VIDEO_MODIFIED_TO_USSD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    or-int/lit16 v1, v1, 0x223

    .line 513
    :cond_3c
    and-int/lit16 v2, p0, 0x224

    const/16 v3, 0x224

    if-ne v2, v3, :cond_3d

    .line 514
    const-string v2, "CALL_FAIL_ERROR_UNSPECIFIED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    or-int/lit16 v1, v1, 0x224

    .line 517
    :cond_3d
    and-int/lit16 v2, p0, 0x225

    const/16 v3, 0x225

    if-ne v2, v3, :cond_3e

    .line 518
    const-string v2, "CALL_FAIL_INVALID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    or-int/lit16 v1, v1, 0x225

    .line 521
    :cond_3e
    if-eq p0, v1, :cond_3f

    .line 522
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    not-int v3, v1

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    :cond_3f
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 70
    if-nez p0, :cond_0

    .line 71
    const-string v0, "CALL_FAIL_UNOBTAINABLE_NUMBER"

    return-object v0

    .line 73
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 74
    const-string v0, "CALL_FAIL_NORMAL"

    return-object v0

    .line 76
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 77
    const-string v0, "CALL_FAIL_BUSY"

    return-object v0

    .line 79
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 80
    const-string v0, "CALL_FAIL_NORMAL_UNSPECIFIED"

    return-object v0

    .line 82
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 83
    const-string v0, "CALL_FAIL_CONGESTION"

    return-object v0

    .line 85
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 86
    const-string v0, "CALL_FAIL_INCOMPATIBILITY_DESTINATION"

    return-object v0

    .line 88
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 89
    const-string v0, "CALL_FAIL_CALL_BARRED"

    return-object v0

    .line 91
    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 92
    const-string v0, "CALL_FAIL_FDN_BLOCKED"

    return-object v0

    .line 94
    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    .line 95
    const-string v0, "CALL_FAIL_IMEI_NOT_ACCEPTED"

    return-object v0

    .line 97
    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    .line 98
    const-string v0, "CALL_FAIL_DIAL_MODIFIED_TO_USSD"

    return-object v0

    .line 100
    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    .line 101
    const-string v0, "CALL_FAIL_DIAL_MODIFIED_TO_SS"

    return-object v0

    .line 103
    :cond_a
    const/16 v0, 0xb

    if-ne p0, v0, :cond_b

    .line 104
    const-string v0, "CALL_FAIL_DIAL_MODIFIED_TO_DIAL"

    return-object v0

    .line 106
    :cond_b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_c

    .line 107
    const-string v0, "CALL_FAIL_EMERGENCY_TEMP_FAILURE"

    return-object v0

    .line 109
    :cond_c
    const/16 v0, 0xd

    if-ne p0, v0, :cond_d

    .line 110
    const-string v0, "CALL_FAIL_EMERGENCY_PERM_FAILURE"

    return-object v0

    .line 112
    :cond_d
    const/16 v0, 0xe

    if-ne p0, v0, :cond_e

    .line 113
    const-string v0, "CALL_FAIL_HO_NOT_FEASIBLE"

    return-object v0

    .line 115
    :cond_e
    const/16 v0, 0x1f5

    if-ne p0, v0, :cond_f

    .line 116
    const-string v0, "CALL_FAIL_USER_BUSY"

    return-object v0

    .line 118
    :cond_f
    const/16 v0, 0x1f6

    if-ne p0, v0, :cond_10

    .line 119
    const-string v0, "CALL_FAIL_USER_REJECT"

    return-object v0

    .line 121
    :cond_10
    const/16 v0, 0x1f7

    if-ne p0, v0, :cond_11

    .line 122
    const-string v0, "CALL_FAIL_LOW_BATTERY"

    return-object v0

    .line 124
    :cond_11
    const/16 v0, 0x1f8

    if-ne p0, v0, :cond_12

    .line 125
    const-string v0, "CALL_FAIL_BLACKLISTED_CALL_ID"

    return-object v0

    .line 127
    :cond_12
    const/16 v0, 0x1f9

    if-ne p0, v0, :cond_13

    .line 128
    const-string v0, "CALL_FAIL_CS_RETRY_REQUIRED"

    return-object v0

    .line 130
    :cond_13
    const/16 v0, 0x1fa

    if-ne p0, v0, :cond_14

    .line 131
    const-string v0, "CALL_FAIL_NETWORK_UNAVAILABLE"

    return-object v0

    .line 133
    :cond_14
    const/16 v0, 0x1fb

    if-ne p0, v0, :cond_15

    .line 134
    const-string v0, "CALL_FAIL_FEATURE_UNAVAILABLE"

    return-object v0

    .line 136
    :cond_15
    const/16 v0, 0x1fc

    if-ne p0, v0, :cond_16

    .line 137
    const-string v0, "CALL_FAIL_SIP_ERROR"

    return-object v0

    .line 139
    :cond_16
    const/16 v0, 0x1fd

    if-ne p0, v0, :cond_17

    .line 140
    const-string v0, "CALL_FAIL_MISC"

    return-object v0

    .line 142
    :cond_17
    const/16 v0, 0x1fe

    if-ne p0, v0, :cond_18

    .line 143
    const-string v0, "CALL_FAIL_ANSWERED_ELSEWHERE"

    return-object v0

    .line 145
    :cond_18
    const/16 v0, 0x1ff

    if-ne p0, v0, :cond_19

    .line 146
    const-string v0, "CALL_FAIL_PULL_OUT_OF_SYNC"

    return-object v0

    .line 148
    :cond_19
    const/16 v0, 0x200

    if-ne p0, v0, :cond_1a

    .line 149
    const-string v0, "CALL_FAIL_CAUSE_CALL_PULLED"

    return-object v0

    .line 151
    :cond_1a
    const/16 v0, 0x201

    if-ne p0, v0, :cond_1b

    .line 152
    const-string v0, "CALL_FAIL_ACCESS_CLASS_BLOCKED"

    return-object v0

    .line 154
    :cond_1b
    const/16 v0, 0x202

    if-ne p0, v0, :cond_1c

    .line 155
    const-string v0, "CALL_FAIL_SIP_REDIRECTED"

    return-object v0

    .line 157
    :cond_1c
    const/16 v0, 0x203

    if-ne p0, v0, :cond_1d

    .line 158
    const-string v0, "CALL_FAIL_SIP_BAD_REQUEST"

    return-object v0

    .line 160
    :cond_1d
    const/16 v0, 0x204

    if-ne p0, v0, :cond_1e

    .line 161
    const-string v0, "CALL_FAIL_SIP_FORBIDDEN"

    return-object v0

    .line 163
    :cond_1e
    const/16 v0, 0x205

    if-ne p0, v0, :cond_1f

    .line 164
    const-string v0, "CALL_FAIL_SIP_NOT_FOUND"

    return-object v0

    .line 166
    :cond_1f
    const/16 v0, 0x206

    if-ne p0, v0, :cond_20

    .line 167
    const-string v0, "CALL_FAIL_SIP_NOT_SUPPORTED"

    return-object v0

    .line 169
    :cond_20
    const/16 v0, 0x207

    if-ne p0, v0, :cond_21

    .line 170
    const-string v0, "CALL_FAIL_SIP_REQUEST_TIMEOUT"

    return-object v0

    .line 172
    :cond_21
    const/16 v0, 0x208

    if-ne p0, v0, :cond_22

    .line 173
    const-string v0, "CALL_FAIL_SIP_TEMPORARILY_UNAVAILABLE"

    return-object v0

    .line 175
    :cond_22
    const/16 v0, 0x209

    if-ne p0, v0, :cond_23

    .line 176
    const-string v0, "CALL_FAIL_SIP_BAD_ADDRESS"

    return-object v0

    .line 178
    :cond_23
    const/16 v0, 0x20a

    if-ne p0, v0, :cond_24

    .line 179
    const-string v0, "CALL_FAIL_SIP_BUSY"

    return-object v0

    .line 181
    :cond_24
    const/16 v0, 0x20b

    if-ne p0, v0, :cond_25

    .line 182
    const-string v0, "CALL_FAIL_SIP_REQUEST_CANCELLED"

    return-object v0

    .line 184
    :cond_25
    const/16 v0, 0x20c

    if-ne p0, v0, :cond_26

    .line 185
    const-string v0, "CALL_FAIL_SIP_NOT_ACCEPTABLE"

    return-object v0

    .line 187
    :cond_26
    const/16 v0, 0x20d

    if-ne p0, v0, :cond_27

    .line 188
    const-string v0, "CALL_FAIL_SIP_NOT_REACHABLE"

    return-object v0

    .line 190
    :cond_27
    const/16 v0, 0x20e

    if-ne p0, v0, :cond_28

    .line 191
    const-string v0, "CALL_FAIL_SIP_SERVER_INTERNAL_ERROR"

    return-object v0

    .line 193
    :cond_28
    const/16 v0, 0x20f

    if-ne p0, v0, :cond_29

    .line 194
    const-string v0, "CALL_FAIL_SIP_SERVER_NOT_IMPLEMENTED"

    return-object v0

    .line 196
    :cond_29
    const/16 v0, 0x210

    if-ne p0, v0, :cond_2a

    .line 197
    const-string v0, "CALL_FAIL_SIP_SERVER_BAD_GATEWAY"

    return-object v0

    .line 199
    :cond_2a
    const/16 v0, 0x211

    if-ne p0, v0, :cond_2b

    .line 200
    const-string v0, "CALL_FAIL_SIP_SERVICE_UNAVAILABLE"

    return-object v0

    .line 202
    :cond_2b
    const/16 v0, 0x212

    if-ne p0, v0, :cond_2c

    .line 203
    const-string v0, "CALL_FAIL_SIP_SERVER_TIMEOUT"

    return-object v0

    .line 205
    :cond_2c
    const/16 v0, 0x213

    if-ne p0, v0, :cond_2d

    .line 206
    const-string v0, "CALL_FAIL_SIP_SERVER_VERSION_UNSUPPORTED"

    return-object v0

    .line 208
    :cond_2d
    const/16 v0, 0x214

    if-ne p0, v0, :cond_2e

    .line 209
    const-string v0, "CALL_FAIL_SIP_SERVER_MESSAGE_TOOLARGE"

    return-object v0

    .line 211
    :cond_2e
    const/16 v0, 0x215

    if-ne p0, v0, :cond_2f

    .line 212
    const-string v0, "CALL_FAIL_SIP_SERVER_PRECONDITION_FAILURE"

    return-object v0

    .line 214
    :cond_2f
    const/16 v0, 0x216

    if-ne p0, v0, :cond_30

    .line 215
    const-string v0, "CALL_FAIL_SIP_USER_REJECTED"

    return-object v0

    .line 217
    :cond_30
    const/16 v0, 0x217

    if-ne p0, v0, :cond_31

    .line 218
    const-string v0, "CALL_FAIL_SIP_GLOBAL_ERROR"

    return-object v0

    .line 220
    :cond_31
    const/16 v0, 0x218

    if-ne p0, v0, :cond_32

    .line 221
    const-string v0, "CALL_FAIL_MEDIA_INIT_FAILED"

    return-object v0

    .line 223
    :cond_32
    const/16 v0, 0x219

    if-ne p0, v0, :cond_33

    .line 224
    const-string v0, "CALL_FAIL_MEDIA_NO_DATA"

    return-object v0

    .line 226
    :cond_33
    const/16 v0, 0x21a

    if-ne p0, v0, :cond_34

    .line 227
    const-string v0, "CALL_FAIL_MEDIA_NOT_ACCEPTABLE"

    return-object v0

    .line 229
    :cond_34
    const/16 v0, 0x21b

    if-ne p0, v0, :cond_35

    .line 230
    const-string v0, "CALL_FAIL_MEDIA_UNSPECIFIED_ERROR"

    return-object v0

    .line 232
    :cond_35
    const/16 v0, 0x21c

    if-ne p0, v0, :cond_36

    .line 233
    const-string v0, "CALL_FAIL_HOLD_RESUME_FAILED"

    return-object v0

    .line 235
    :cond_36
    const/16 v0, 0x21d

    if-ne p0, v0, :cond_37

    .line 236
    const-string v0, "CALL_FAIL_HOLD_RESUME_CANCELED"

    return-object v0

    .line 238
    :cond_37
    const/16 v0, 0x21e

    if-ne p0, v0, :cond_38

    .line 239
    const-string v0, "CALL_FAIL_HOLD_REINVITE_COLLISION"

    return-object v0

    .line 241
    :cond_38
    const/16 v0, 0x21f

    if-ne p0, v0, :cond_39

    .line 242
    const-string v0, "CALL_FAIL_DIAL_MODIFIED_TO_DIAL_VIDEO"

    return-object v0

    .line 244
    :cond_39
    const/16 v0, 0x220

    if-ne p0, v0, :cond_3a

    .line 245
    const-string v0, "CALL_FAIL_DIAL_VIDEO_MODIFIED_TO_DIAL"

    return-object v0

    .line 247
    :cond_3a
    const/16 v0, 0x221

    if-ne p0, v0, :cond_3b

    .line 248
    const-string v0, "CALL_FAIL_DIAL_VIDEO_MODIFIED_TO_DIAL_VIDEO"

    return-object v0

    .line 250
    :cond_3b
    const/16 v0, 0x222

    if-ne p0, v0, :cond_3c

    .line 251
    const-string v0, "CALL_FAIL_DIAL_VIDEO_MODIFIED_TO_SS"

    return-object v0

    .line 253
    :cond_3c
    const/16 v0, 0x223

    if-ne p0, v0, :cond_3d

    .line 254
    const-string v0, "CALL_FAIL_DIAL_VIDEO_MODIFIED_TO_USSD"

    return-object v0

    .line 256
    :cond_3d
    const/16 v0, 0x224

    if-ne p0, v0, :cond_3e

    .line 257
    const-string v0, "CALL_FAIL_ERROR_UNSPECIFIED"

    return-object v0

    .line 259
    :cond_3e
    const/16 v0, 0x225

    if-ne p0, v0, :cond_3f

    .line 260
    const-string v0, "CALL_FAIL_INVALID"

    return-object v0

    .line 262
    :cond_3f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method