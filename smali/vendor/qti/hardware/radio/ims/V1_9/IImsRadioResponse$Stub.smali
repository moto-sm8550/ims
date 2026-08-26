.class public abstract Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;
.super Landroid/os/HwBinder;
.source "IImsRadioResponse.java"

# interfaces
.implements Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1478
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    return-object p0
.end method

.method public debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 2

    .line 1547
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1548
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 1549
    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 1550
    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    return-object p0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 1514
    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0x20

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    new-array v2, v0, [B

    fill-array-data v2, :array_1

    new-array v3, v0, [B

    fill-array-data v3, :array_2

    new-array v4, v0, [B

    fill-array-data v4, :array_3

    new-array v5, v0, [B

    fill-array-data v5, :array_4

    new-array v6, v0, [B

    fill-array-data v6, :array_5

    new-array v7, v0, [B

    fill-array-data v7, :array_6

    new-array v8, v0, [B

    fill-array-data v8, :array_7

    new-array v9, v0, [B

    fill-array-data v9, :array_8

    new-array v10, v0, [B

    fill-array-data v10, :array_9

    filled-new-array/range {v1 .. v10}, [[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    :array_0
    .array-data 1
        0x7et
        -0x61t
        0x6bt
        -0xft
        0x11t
        -0x57t
        -0x46t
        0x44t
        0x9t
        -0xft
        0x2t
        -0x39t
        0x1et
        0x1ct
        0x66t
        -0x56t
        -0x23t
        -0x6et
        0x48t
        0x47t
        -0x2et
        -0x4ct
        0x4at
        0x74t
        0x3t
        -0x34t
        -0x31t
        0x2et
        0x70t
        -0x1et
        -0x6dt
        -0x34t
    .end array-data

    :array_1
    .array-data 1
        0x7ct
        0x1bt
        0x8t
        -0x25t
        -0x4et
        -0x7dt
        -0x68t
        -0x4ft
        -0x75t
        -0x5ct
        -0x31t
        0x7at
        -0x5t
        0x26t
        0x44t
        0xdt
        0x56t
        0x4ft
        -0x2et
        -0x78t
        -0x73t
        0x69t
        -0x30t
        0x47t
        -0x41t
        -0x55t
        -0x8t
        -0x39t
        -0x6ct
        0x66t
        0x14t
        -0x8t
    .end array-data

    :array_2
    .array-data 1
        -0x75t
        0x6ft
        -0x61t
        -0x75t
        0x68t
        0x7ft
        -0x76t
        -0x5bt
        0x34t
        0x4dt
        0x24t
        0x7ct
        -0x8t
        0x5ct
        -0x6at
        0x14t
        -0x24t
        0x0t
        -0x1ft
        0x77t
        0x5bt
        -0x78t
        0x7ft
        0x2at
        -0x3t
        -0x7t
        0x3bt
        -0x78t
        -0x72t
        -0x41t
        0x3ct
        -0x3ct
    .end array-data

    :array_3
    .array-data 1
        -0x66t
        0x17t
        -0x10t
        0x5ct
        0x23t
        0x2dt
        0x5ct
        0x17t
        0x1ct
        0x55t
        0x5et
        0x71t
        -0x16t
        -0x16t
        0x41t
        -0x65t
        -0x7et
        -0x52t
        0x1et
        -0x7ft
        -0x34t
        0x26t
        -0x2ft
        0x5ct
        -0x21t
        0x10t
        0x31t
        0x31t
        0x6ft
        0x6at
        -0x2bt
        -0x5et
    .end array-data

    :array_4
    .array-data 1
        -0x1bt
        0x59t
        0x57t
        0x7at
        0x3et
        -0x6ct
        -0x77t
        0x0t
        -0x62t
        0x67t
        0x5bt
        -0x69t
        0x13t
        -0x3bt
        -0x4t
        0x4dt
        0x6ft
        -0x63t
        -0x25t
        -0x38t
        0x52t
        0x5et
        -0x36t
        -0x5t
        0x75t
        -0x17t
        0x38t
        0x72t
        -0x19t
        0x17t
        0x2et
        0x63t
    .end array-data

    :array_5
    .array-data 1
        -0x2ct
        -0x25t
        0x28t
        -0x2bt
        0x78t
        0x61t
        0x74t
        0x30t
        -0x3t
        0x13t
        -0x3t
        -0x2ct
        0x4bt
        -0x67t
        -0x26t
        0x66t
        0x4dt
        -0x5dt
        0x11t
        0x42t
        0x3dt
        -0x33t
        0x77t
        -0x46t
        0x6et
        0x13t
        0x25t
        0x6t
        0x42t
        0x2ft
        0x64t
        -0x20t
    .end array-data

    :array_6
    .array-data 1
        0x26t
        0x42t
        0x61t
        0x79t
        0x73t
        -0x72t
        0x56t
        0x2bt
        0x63t
        0x36t
        -0x3et
        0x1ft
        -0x58t
        0x7dt
        -0x2at
        0x3at
        0x61t
        -0xdt
        0x39t
        -0xdt
        -0x61t
        0x54t
        -0x23t
        -0x4et
        0x1bt
        0x6bt
        -0x71t
        -0x55t
        0x3bt
        -0x4ct
        -0x76t
        -0x6et
    .end array-data

    :array_7
    .array-data 1
        -0x4at
        0x3ct
        0x39t
        0x7ft
        -0x3bt
        0x21t
        0x65t
        0x18t
        -0x18t
        0x15t
        0x53t
        -0x6dt
        -0x38t
        -0x58t
        0x4t
        0xdt
        0x21t
        0x4et
        -0x60t
        0x5t
        -0x51t
        0x49t
        -0x46t
        0x0t
        -0x5dt
        -0x61t
        -0x17t
        -0x35t
        0x67t
        0x27t
        0x62t
        0x22t
    .end array-data

    :array_8
    .array-data 1
        0x1dt
        -0x24t
        -0x7bt
        0x29t
        -0x2at
        0x7at
        0x24t
        0x7bt
        0x60t
        -0x66t
        0x59t
        -0x41t
        -0x60t
        0x21t
        -0x25t
        0x62t
        -0x4t
        -0x1at
        0x23t
        0xdt
        0x2at
        0x3t
        0x3at
        -0x1ct
        -0x5ft
        -0x36t
        -0x52t
        -0x35t
        -0x49t
        0x26t
        -0x62t
        0x4dt
    .end array-data

    :array_9
    .array-data 1
        -0x14t
        0x7ft
        -0x29t
        -0x62t
        -0x30t
        0x2dt
        -0x6t
        -0x7bt
        -0x44t
        0x49t
        -0x6ct
        0x26t
        -0x53t
        -0x52t
        0x3et
        -0x42t
        0x23t
        -0x11t
        0x5t
        0x24t
        -0xdt
        -0x33t
        0x69t
        0x57t
        0x13t
        -0x6dt
        0x24t
        -0x48t
        0x3bt
        0x18t
        -0x36t
        0x4ct
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1486
    new-instance p0, Ljava/util/ArrayList;

    const-string v8, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    const-string v9, "android.hidl.base@1.0::IBase"

    const-string v0, "vendor.qti.hardware.radio.ims@1.9::IImsRadioResponse"

    const-string v1, "vendor.qti.hardware.radio.ims@1.8::IImsRadioResponse"

    const-string v2, "vendor.qti.hardware.radio.ims@1.7::IImsRadioResponse"

    const-string v3, "vendor.qti.hardware.radio.ims@1.6::IImsRadioResponse"

    const-string v4, "vendor.qti.hardware.radio.ims@1.5::IImsRadioResponse"

    const-string v5, "vendor.qti.hardware.radio.ims@1.4::IImsRadioResponse"

    const-string v6, "vendor.qti.hardware.radio.ims@1.3::IImsRadioResponse"

    const-string v7, "vendor.qti.hardware.radio.ims@1.2::IImsRadioResponse"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 0

    .line 1508
    const-string p0, "vendor.qti.hardware.radio.ims@1.9::IImsRadioResponse"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 1557
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1587
    const-string v3, "vendor.qti.hardware.radio.ims@1.9::IImsRadioResponse"

    const-string v4, "vendor.qti.hardware.radio.ims@1.5::IImsRadioResponse"

    const-string v5, "vendor.qti.hardware.radio.ims@1.4::IImsRadioResponse"

    const-string v6, "vendor.qti.hardware.radio.ims@1.3::IImsRadioResponse"

    const-string v7, "vendor.qti.hardware.radio.ims@1.8::IImsRadioResponse"

    const-string v8, "vendor.qti.hardware.radio.ims@1.6::IImsRadioResponse"

    const-string v9, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    packed-switch p1, :pswitch_data_0

    const/4 v3, 0x0

    const-string v4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    return-void

    .line 2351
    :sswitch_0
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2353
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->notifySyspropsChanged()V

    return-void

    .line 2340
    :sswitch_1
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2342
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 2343
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2344
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2345
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 2330
    :sswitch_2
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2332
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->ping()V

    .line 2333
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2334
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 2317
    :sswitch_3
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2319
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->setHALInstrumentation()V

    return-void

    .line 2283
    :sswitch_4
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2285
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 2286
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2288
    new-instance v1, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 2290
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-wide/16 v5, 0x8

    .line 2291
    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v5, 0xc

    .line 2292
    invoke-virtual {v1, v5, v6, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 2293
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v3, v4, :cond_1

    mul-int/lit8 v6, v3, 0x20

    int-to-long v6, v6

    .line 2297
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    if-eqz v8, :cond_0

    .line 2299
    array-length v9, v8

    const/16 v10, 0x20

    if-ne v9, v10, :cond_0

    .line 2303
    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2300
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array element is not of the expected length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-wide/16 v3, 0x0

    .line 2307
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 2309
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2311
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 2272
    :sswitch_5
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2274
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 2275
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2276
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2277
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 2260
    :sswitch_6
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2262
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v4

    .line 2263
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2264
    invoke-virtual {p0, v4, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 2265
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2266
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 2249
    :sswitch_7
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2251
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 2252
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2253
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2254
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 2239
    :pswitch_0
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2241
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2242
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2243
    invoke-virtual {p0, v2, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->sendVosActionInfoResponse(II)V

    return-void

    .line 2229
    :pswitch_1
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2231
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2232
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2233
    invoke-virtual {p0, v2, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->sendVosSupportStatusResponse(II)V

    return-void

    .line 2217
    :pswitch_2
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2219
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2220
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2221
    new-instance v4, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {v4}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    .line 2222
    invoke-virtual {v4, p2}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2223
    invoke-virtual {p0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->explicitCallTransferResponse_1_8(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    return-void

    .line 2205
    :pswitch_3
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2207
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2208
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2209
    new-instance v4, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;

    invoke-direct {v4}, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;-><init>()V

    .line 2210
    invoke-virtual {v4, p2}, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2211
    invoke-virtual {p0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->getConfigResponse_1_8(IILvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;)V

    return-void

    .line 2193
    :pswitch_4
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2195
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2196
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2197
    new-instance v4, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;

    invoke-direct {v4}, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;-><init>()V

    .line 2198
    invoke-virtual {v4, p2}, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2199
    invoke-virtual {p0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->setConfigResponse_1_8(IILvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;)V

    return-void

    .line 2179
    :pswitch_5
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2181
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2182
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2183
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2184
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 2185
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 2186
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    move-object v0, p0

    .line 2187
    invoke-virtual/range {v0 .. v6}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->sendImsSmsResponse_1_8(IIIIII)V

    return-void

    .line 2169
    :pswitch_6
    const-string v1, "vendor.qti.hardware.radio.ims@1.7::IImsRadioResponse"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2171
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2172
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2173
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->sendSipDtmfResponse(II)V

    return-void

    .line 2157
    :pswitch_7
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2159
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2160
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2161
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    .line 2162
    invoke-virtual {v3, p2}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2163
    invoke-virtual {p0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->cancelPendingUssdResponse(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    return-void

    .line 2145
    :pswitch_8
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2147
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2148
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2149
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    .line 2150
    invoke-virtual {v3, p2}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2151
    invoke-virtual {p0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->sendUssdResponse(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    return-void

    .line 2134
    :pswitch_9
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2136
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2137
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2138
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2139
    invoke-virtual {p0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->queryServiceStatusResponse_1_6(IILjava/util/ArrayList;)V

    return-void

    .line 2122
    :pswitch_a
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2124
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2125
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2126
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;-><init>()V

    .line 2127
    invoke-virtual {v3, p2}, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2128
    invoke-virtual {p0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->getRegistrationResponse_1_6(IILvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;)V

    return-void

    .line 2110
    :pswitch_b
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2112
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2113
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2114
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;-><init>()V

    .line 2115
    invoke-virtual {v3, p2}, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2116
    invoke-virtual {p0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->setConfigResponse_1_6(IILvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;)V

    return-void

    .line 2098
    :pswitch_c
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2100
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2101
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2102
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2103
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 2104
    invoke-virtual {p0, v1, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->sendImsSmsResponse_1_5(IIII)V

    return-void

    .line 2086
    :pswitch_d
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2088
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2089
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2090
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_5/CallForwardStatusInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_5/CallForwardStatusInfo;-><init>()V

    .line 2091
    invoke-virtual {v3, p2}, Lvendor/qti/hardware/radio/ims/V1_5/CallForwardStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2092
    invoke-virtual {p0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->setCallForwardStatusResponse(IILvendor/qti/hardware/radio/ims/V1_5/CallForwardStatusInfo;)V

    return-void

    .line 2075
    :pswitch_e
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2077
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2078
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2079
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v3

    .line 2080
    invoke-virtual {p0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->queryVirtualLineInfoResponse(ILjava/lang/String;Ljava/util/ArrayList;)V

    return-void

    .line 2065
    :pswitch_f
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2067
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2068
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2069
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->registerMultiIdentityLinesResponse(II)V

    return-void

    .line 2053
    :pswitch_10
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2055
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2056
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2057
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;-><init>()V

    .line 2058
    invoke-virtual {v3, p2}, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2059
    invoke-virtual {p0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->getColrResponse_1_3(IILvendor/qti/hardware/radio/ims/V1_3/ColrInfo;)V

    return-void

    .line 2041
    :pswitch_11
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2043
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2044
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2045
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;-><init>()V

    .line 2046
    invoke-virtual {v3, p2}, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2047
    invoke-virtual {p0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->suppServiceStatusResponse_1_3(IILvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;)V

    return-void

    .line 2029
    :pswitch_12
    const-string v1, "vendor.qti.hardware.radio.ims@1.2::IImsRadioResponse"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2031
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2032
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2033
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2034
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 2035
    invoke-virtual {p0, v1, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->sendImsSmsResponse(IIII)V

    return-void

    .line 2017
    :pswitch_13
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2019
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2020
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2021
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;-><init>()V

    .line 2022
    invoke-virtual {v3, p2}, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2023
    invoke-virtual {p0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->querySsacStatusResponse(IILvendor/qti/hardware/radio/ims/V1_0/SsacInfo;)V

    return-void

    .line 2005
    :pswitch_14
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2007
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2008
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2009
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;-><init>()V

    .line 2010
    invoke-virtual {v3, p2}, Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2011
    invoke-virtual {p0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->queryVopsStatusResponse(IILvendor/qti/hardware/radio/ims/V1_0/VopsInfo;)V

    return-void

    .line 1994
    :pswitch_15
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1996
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1997
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1998
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1999
    invoke-virtual {p0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->queryVoltePrefResponse(III)V

    return-void

    .line 1984
    :pswitch_16
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1986
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1987
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1988
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->updateVoltePrefResponse(II)V

    return-void

    .line 1974
    :pswitch_17
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1976
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1977
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1978
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->cancelModifyCallResponse(II)V

    return-void

    .line 1964
    :pswitch_18
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1966
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1967
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1968
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->sendRttMessageResponse(II)V

    return-void

    .line 1952
    :pswitch_19
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1954
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1955
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1956
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;-><init>()V

    .line 1957
    invoke-virtual {v3, p2}, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1958
    invoke-virtual {p0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->getImsSubConfigResponse(IILvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;)V

    return-void

    .line 1942
    :pswitch_1a
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1944
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1945
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1946
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->sendGeolocationInfoResponse(II)V

    return-void

    .line 1932
    :pswitch_1b
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1934
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1935
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1936
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->deflectCallResponse(II)V

    return-void

    .line 1922
    :pswitch_1c
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1924
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1925
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1926
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->addParticipantResponse(II)V

    return-void

    .line 1911
    :pswitch_1d
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1913
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1914
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1915
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v3

    .line 1916
    invoke-virtual {p0, v1, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->getRtpErrorStatisticsResponse(IIJ)V

    return-void

    .line 1900
    :pswitch_1e
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1902
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1903
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1904
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v3

    .line 1905
    invoke-virtual {p0, v1, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->getRtpStatisticsResponse(IIJ)V

    return-void

    .line 1889
    :pswitch_1f
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1891
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1892
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1893
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1894
    invoke-virtual {p0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->setSuppServiceNotificationResponse(III)V

    return-void

    .line 1879
    :pswitch_20
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1881
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1882
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1883
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->explicitCallTransferResponse(II)V

    return-void

    .line 1865
    :pswitch_21
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1867
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1868
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1869
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1870
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 1871
    new-instance v5, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {v5}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    .line 1872
    invoke-virtual {v5, p2}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object v0, p0

    .line 1873
    invoke-virtual/range {v0 .. v5}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->getCallWaitingResponse(IIIILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    return-void

    .line 1852
    :pswitch_22
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1854
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1855
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1856
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1857
    new-instance v4, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {v4}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    .line 1858
    invoke-virtual {v4, p2}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1859
    invoke-virtual {p0, v1, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->queryCallForwardStatusResponse(IILjava/util/ArrayList;Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    return-void

    .line 1842
    :pswitch_23
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1844
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1845
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1846
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->modifyCallConfirmResponse(II)V

    return-void

    .line 1832
    :pswitch_24
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1834
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1835
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1836
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->modifyCallInitiateResponse(II)V

    return-void

    .line 1822
    :pswitch_25
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1824
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1825
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1826
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->setUiTTYModeResponse(II)V

    return-void

    .line 1812
    :pswitch_26
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1814
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1815
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1816
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->stopDtmfResponse(II)V

    return-void

    .line 1802
    :pswitch_27
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1804
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1805
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1806
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->startDtmfResponse(II)V

    return-void

    .line 1792
    :pswitch_28
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1794
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1795
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1796
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->sendDtmfResponse(II)V

    return-void

    .line 1782
    :pswitch_29
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1784
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1785
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1786
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->exitEmergencyCallbackModeResponse(II)V

    return-void

    .line 1770
    :pswitch_2a
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1772
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1773
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1774
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;-><init>()V

    .line 1775
    invoke-virtual {v3, p2}, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1776
    invoke-virtual {p0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->getColrResponse(IILvendor/qti/hardware/radio/ims/V1_0/ColrInfo;)V

    return-void

    .line 1760
    :pswitch_2b
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1762
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1763
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1764
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->setClirResponse(II)V

    return-void

    .line 1747
    :pswitch_2c
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1749
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1750
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1751
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;-><init>()V

    .line 1752
    invoke-virtual {v3, p2}, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1753
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 1754
    invoke-virtual {p0, v1, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->getClirResponse(IILvendor/qti/hardware/radio/ims/V1_0/ClirInfo;Z)V

    return-void

    .line 1735
    :pswitch_2d
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1737
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1738
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1739
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;-><init>()V

    .line 1740
    invoke-virtual {v3, p2}, Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1741
    invoke-virtual {p0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->getClipResponse(IILvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;)V

    return-void

    .line 1723
    :pswitch_2e
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1725
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1726
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1727
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    .line 1728
    invoke-virtual {v3, p2}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1729
    invoke-virtual {p0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->conferenceResponse(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    return-void

    .line 1711
    :pswitch_2f
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1713
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1714
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1715
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;-><init>()V

    .line 1716
    invoke-virtual {v3, p2}, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1717
    invoke-virtual {p0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->suppServiceStatusResponse(IILvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;)V

    return-void

    .line 1699
    :pswitch_30
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1701
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1702
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1703
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;-><init>()V

    .line 1704
    invoke-virtual {v3, p2}, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1705
    invoke-virtual {p0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->getRegistrationResponse(IILvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;)V

    return-void

    .line 1687
    :pswitch_31
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1689
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1690
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1691
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;-><init>()V

    .line 1692
    invoke-virtual {v3, p2}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1693
    invoke-virtual {p0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->getConfigResponse(IILvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)V

    return-void

    .line 1675
    :pswitch_32
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1677
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1678
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1679
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;-><init>()V

    .line 1680
    invoke-virtual {v3, p2}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1681
    invoke-virtual {p0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->setConfigResponse(IILvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)V

    return-void

    .line 1663
    :pswitch_33
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1665
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1666
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1667
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    .line 1668
    invoke-virtual {v3, p2}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1669
    invoke-virtual {p0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->resumeResponse(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    return-void

    .line 1651
    :pswitch_34
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1653
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1654
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1655
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    .line 1656
    invoke-virtual {v3, p2}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1657
    invoke-virtual {p0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->holdResponse(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    return-void

    .line 1641
    :pswitch_35
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1643
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1644
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1645
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->setServiceStatusResponse(II)V

    return-void

    .line 1630
    :pswitch_36
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1632
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1633
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1634
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1635
    invoke-virtual {p0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->queryServiceStatusResponse(IILjava/util/ArrayList;)V

    return-void

    .line 1620
    :pswitch_37
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1622
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1623
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1624
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->requestRegistrationChangeResponse(II)V

    return-void

    .line 1610
    :pswitch_38
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1612
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1613
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1614
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->hangupResponse(II)V

    return-void

    .line 1600
    :pswitch_39
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1602
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1603
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1604
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->answerResponse(II)V

    return-void

    .line 1590
    :pswitch_3a
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1592
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1593
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1594
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->dialResponse(II)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xf43484e -> :sswitch_7
        0xf444247 -> :sswitch_6
        0xf445343 -> :sswitch_5
        0xf485348 -> :sswitch_4
        0xf494e54 -> :sswitch_3
        0xf504e47 -> :sswitch_2
        0xf524546 -> :sswitch_1
        0xf535953 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    .line 1569
    const-string v0, "vendor.qti.hardware.radio.ims@1.9::IImsRadioResponse"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1576
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "@Stub"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
