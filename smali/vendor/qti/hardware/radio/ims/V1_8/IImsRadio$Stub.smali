.class public abstract Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;
.super Landroid/os/HwBinder;
.source "IImsRadio.java"

# interfaces
.implements Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1652
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

    .line 1721
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1722
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 1723
    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 1724
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

    .line 1688
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
        -0x3ct
        0x57t
        -0x14t
        -0x4at
        -0x3t
        0x27t
        -0x31t
        0x48t
        0x77t
        -0x59t
        -0x5t
        -0xct
        -0x16t
        -0x1t
        0x2bt
        0x71t
        0x28t
        -0x14t
        -0x27t
        -0x42t
        0x7et
        0x6dt
        0x49t
        0x2bt
        0x5ft
        -0xft
        0x37t
        -0x40t
        -0x73t
        0x7dt
        -0x6at
        -0x46t
    .end array-data

    :array_1
    .array-data 1
        0x43t
        0x29t
        -0x49t
        -0x30t
        -0x7ct
        0x56t
        0x45t
        -0x7et
        -0x29t
        0x11t
        0x39t
        0x24t
        -0x35t
        0x78t
        -0x69t
        -0x65t
        0x3et
        0x7t
        0x62t
        0x1t
        -0x22t
        -0x80t
        -0x26t
        0x45t
        0x77t
        -0x8t
        0xct
        0x1bt
        0x2t
        -0xft
        0x2bt
        0x6t
    .end array-data

    :array_2
    .array-data 1
        0xct
        0x52t
        -0xct
        0x2et
        -0x62t
        -0x43t
        -0x76t
        0x2ft
        0x1et
        0x4ct
        -0x3at
        -0x7et
        -0x68t
        0x7dt
        0x13t
        -0x38t
        0x2at
        -0x7ct
        0x59t
        -0xct
        -0x1t
        0x4ft
        -0x3ft
        0x7t
        0x6ft
        0x19t
        -0x47t
        -0x2t
        -0x14t
        0x79t
        0x7ft
        -0x2t
    .end array-data

    :array_3
    .array-data 1
        -0x79t
        -0x25t
        0x1bt
        0x3bt
        -0x22t
        0x57t
        -0x79t
        -0x6ft
        -0x22t
        0x61t
        0x3at
        0x35t
        -0x7ft
        -0x60t
        0x1ft
        0x5dt
        -0x68t
        -0x5ct
        0x45t
        0x3ct
        -0x6t
        -0x2dt
        0x74t
        0x54t
        0x16t
        0x76t
        -0x3at
        0x53t
        0x11t
        0x26t
        -0x7t
        -0x16t
    .end array-data

    :array_4
    .array-data 1
        -0x47t
        -0x50t
        0x2et
        -0x22t
        0x9t
        -0x54t
        0x3ct
        -0x67t
        -0x6ft
        -0x7t
        0x42t
        0x22t
        -0x49t
        -0x61t
        -0xbt
        -0x3t
        -0x74t
        -0x4ft
        -0x56t
        -0x7ct
        0x62t
        0x4dt
        -0x8t
        -0x5t
        -0x57t
        0x61t
        0x33t
        -0x5at
        0x3bt
        -0x1at
        -0x60t
        0xet
    .end array-data

    :array_5
    .array-data 1
        0x4t
        -0xft
        -0x3t
        -0x25t
        -0x58t
        -0x36t
        -0x17t
        -0x5et
        0x5ct
        -0x67t
        0x4ft
        -0x6t
        -0x25t
        -0x6ft
        -0x22t
        -0x20t
        -0x58t
        0x1dt
        0x3bt
        0x25t
        0x49t
        0x17t
        0x75t
        0x4et
        0x3ct
        0x14t
        0x5t
        -0x2at
        0x6ft
        -0x3ct
        -0xdt
        0x4ct
    .end array-data

    :array_6
    .array-data 1
        -0x6ct
        0x44t
        -0x35t
        0x5at
        -0x25t
        -0x5et
        0x1ft
        -0x20t
        -0x38t
        -0x53t
        -0x14t
        0x26t
        -0x73t
        -0x69t
        -0x5dt
        0x4et
        -0x21t
        -0x1et
        -0x2t
        -0x62t
        0x1t
        -0x77t
        -0x43t
        0x3ft
        0x5bt
        0x5ft
        -0x70t
        0x40t
        -0x7dt
        0xat
        -0x21t
        -0x45t
    .end array-data

    :array_7
    .array-data 1
        0x2ft
        0x49t
        -0x57t
        0x31t
        0x13t
        0x1et
        -0x13t
        0x53t
        0x26t
        0x5ft
        -0x1bt
        -0x66t
        0x68t
        0x61t
        -0x3et
        -0x43t
        0x47t
        0x6bt
        -0x11t
        0x50t
        0x40t
        0x34t
        0x49t
        -0xbt
        0x56t
        -0x51t
        0x8t
        -0x7dt
        0x57t
        0x3dt
        0x7ft
        -0xft
    .end array-data

    :array_8
    .array-data 1
        -0x53t
        -0x17t
        0x0t
        -0x8t
        -0x1et
        0x77t
        0x5ct
        0x1at
        -0x1dt
        -0x42t
        0x7t
        0x27t
        -0x45t
        0x51t
        0x17t
        0x18t
        -0x2ft
        0x62t
        -0x40t
        -0x50t
        0x3ct
        -0x74t
        0x66t
        -0x1ft
        -0x36t
        -0x31t
        0x53t
        0xbt
        0x12t
        -0x52t
        -0xbt
        0x3dt
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

    .line 1660
    new-instance p0, Ljava/util/ArrayList;

    const-string v8, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    const-string v9, "android.hidl.base@1.0::IBase"

    const-string v0, "vendor.qti.hardware.radio.ims@1.8::IImsRadio"

    const-string v1, "vendor.qti.hardware.radio.ims@1.7::IImsRadio"

    const-string v2, "vendor.qti.hardware.radio.ims@1.6::IImsRadio"

    const-string v3, "vendor.qti.hardware.radio.ims@1.5::IImsRadio"

    const-string v4, "vendor.qti.hardware.radio.ims@1.4::IImsRadio"

    const-string v5, "vendor.qti.hardware.radio.ims@1.3::IImsRadio"

    const-string v6, "vendor.qti.hardware.radio.ims@1.2::IImsRadio"

    const-string v7, "vendor.qti.hardware.radio.ims@1.1::IImsRadio"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 0

    .line 1682
    const-string p0, "vendor.qti.hardware.radio.ims@1.8::IImsRadio"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 1731
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

    .line 1761
    const-string v3, "vendor.qti.hardware.radio.ims@1.8::IImsRadio"

    const-string v4, "vendor.qti.hardware.radio.ims@1.3::IImsRadio"

    const-string v5, "vendor.qti.hardware.radio.ims@1.5::IImsRadio"

    const-string v6, "vendor.qti.hardware.radio.ims@1.4::IImsRadio"

    const-string v7, "vendor.qti.hardware.radio.ims@1.2::IImsRadio"

    const-string v8, "vendor.qti.hardware.radio.ims@1.6::IImsRadio"

    const/4 v9, 0x0

    const-string v10, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    packed-switch p1, :pswitch_data_0

    const-string v3, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    return-void

    .line 2627
    :sswitch_0
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2629
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->notifySyspropsChanged()V

    return-void

    .line 2616
    :sswitch_1
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2618
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 2619
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2620
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2621
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 2606
    :sswitch_2
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2608
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->ping()V

    .line 2609
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2610
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 2593
    :sswitch_3
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2595
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->setHALInstrumentation()V

    return-void

    .line 2559
    :sswitch_4
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2561
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 2562
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2564
    new-instance v1, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v1, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 2566
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-wide/16 v4, 0x8

    .line 2567
    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0xc

    .line 2568
    invoke-virtual {v1, v4, v5, v9}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 2569
    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v5, v3, 0x20

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v9, v3, :cond_1

    mul-int/lit8 v5, v9, 0x20

    int-to-long v5, v5

    .line 2573
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    if-eqz v7, :cond_0

    .line 2575
    array-length v8, v7

    const/16 v10, 0x20

    if-ne v8, v10, :cond_0

    .line 2579
    invoke-virtual {v4, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2576
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array element is not of the expected length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-wide/16 v5, 0x0

    .line 2583
    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 2585
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2587
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 2548
    :sswitch_5
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2550
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 2551
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2552
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2553
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 2536
    :sswitch_6
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2538
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v3

    .line 2539
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2540
    invoke-virtual {p0, v3, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 2541
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2542
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 2525
    :sswitch_7
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2527
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 2528
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2529
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2530
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 2514
    :pswitch_0
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2516
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2517
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;-><init>()V

    .line 2518
    invoke-virtual {v3, p2}, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2519
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->getConfig_1_8(ILvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;)V

    return-void

    .line 2503
    :pswitch_1
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2505
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2506
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;-><init>()V

    .line 2507
    invoke-virtual {v3, p2}, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2508
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->setConfig_1_8(ILvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;)V

    return-void

    .line 2493
    :pswitch_2
    const-string v2, "vendor.qti.hardware.radio.ims@1.7::IImsRadio"

    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2495
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2496
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2497
    invoke-virtual {p0, v2, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->sendSipDtmf(ILjava/lang/String;)V

    return-void

    .line 2480
    :pswitch_3
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2482
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2483
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;-><init>()V

    .line 2484
    invoke-virtual {v3, p2}, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2485
    new-instance v4, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;

    invoke-direct {v4}, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;-><init>()V

    .line 2486
    invoke-virtual {v4, p2}, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2487
    invoke-virtual {p0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->callComposerDial(ILvendor/qti/hardware/radio/ims/V1_6/DialRequest;Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;)V

    return-void

    .line 2471
    :pswitch_4
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2473
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2474
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->cancelPendingUssd(I)V

    return-void

    .line 2461
    :pswitch_5
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2463
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2464
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2465
    invoke-virtual {p0, v2, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->sendUssd(ILjava/lang/String;)V

    return-void

    .line 2447
    :pswitch_6
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2449
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    move v3, v2

    .line 2450
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    move v4, v3

    .line 2451
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    move v5, v4

    .line 2452
    new-instance v4, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;

    invoke-direct {v4}, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;-><init>()V

    .line 2453
    invoke-virtual {v4, p2}, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move v1, v5

    .line 2454
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    .line 2455
    invoke-virtual/range {v0 .. v5}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->suppServiceStatus_1_6(IIILvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;Ljava/lang/String;)V

    return-void

    .line 2437
    :pswitch_7
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2439
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2440
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2441
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->setServiceStatus_1_6(ILjava/util/ArrayList;)V

    return-void

    .line 2421
    :pswitch_8
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2423
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2424
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;-><init>()V

    .line 2425
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2426
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2427
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v4

    .line 2428
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 2429
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v6

    .line 2430
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v7

    move-object v0, p0

    .line 2431
    invoke-virtual/range {v0 .. v7}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->emergencyDial_1_6(ILvendor/qti/hardware/radio/ims/V1_6/DialRequest;ILjava/util/ArrayList;IZZ)V

    return-void

    .line 2410
    :pswitch_9
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2412
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2413
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;-><init>()V

    .line 2414
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2415
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->dial_1_6(ILvendor/qti/hardware/radio/ims/V1_6/DialRequest;)V

    return-void

    .line 2399
    :pswitch_a
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2401
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2402
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;-><init>()V

    .line 2403
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2404
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->setConfig_1_6(ILvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;)V

    return-void

    .line 2388
    :pswitch_b
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2390
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2391
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2392
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2393
    invoke-virtual {p0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->acknowledgeSms_1_5(III)V

    return-void

    .line 2372
    :pswitch_c
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2374
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2375
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;-><init>()V

    .line 2376
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2377
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2378
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v4

    .line 2379
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 2380
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v6

    .line 2381
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v7

    move-object v0, p0

    .line 2382
    invoke-virtual/range {v0 .. v7}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->emergencyDial(ILvendor/qti/hardware/radio/ims/V1_4/DialRequest;ILjava/util/ArrayList;IZZ)V

    return-void

    .line 2361
    :pswitch_d
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2363
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2364
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;-><init>()V

    .line 2365
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2366
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->setConfig_1_5(ILvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;)V

    return-void

    .line 2350
    :pswitch_e
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2352
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2353
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;-><init>()V

    .line 2354
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2355
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->addParticipant_1_4(ILvendor/qti/hardware/radio/ims/V1_4/DialRequest;)V

    return-void

    .line 2339
    :pswitch_f
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2341
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2342
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;-><init>()V

    .line 2343
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2344
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->dial_1_4(ILvendor/qti/hardware/radio/ims/V1_4/DialRequest;)V

    return-void

    .line 2329
    :pswitch_10
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2331
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2332
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2333
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->queryVirtualLineInfo(ILjava/lang/String;)V

    return-void

    .line 2319
    :pswitch_11
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2321
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2322
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2323
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->registerMultiIdentityLines(ILjava/util/ArrayList;)V

    return-void

    .line 2308
    :pswitch_12
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2310
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2311
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;-><init>()V

    .line 2312
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2313
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->setColr_1_3(ILvendor/qti/hardware/radio/ims/V1_3/ColrInfo;)V

    return-void

    .line 2297
    :pswitch_13
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2299
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2300
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;-><init>()V

    .line 2301
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2302
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->hangup_1_3(ILvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;)V

    return-void

    .line 2284
    :pswitch_14
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2286
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2287
    invoke-virtual {p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v2

    .line 2288
    invoke-virtual {p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v4

    .line 2289
    new-instance v6, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;

    invoke-direct {v6}, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;-><init>()V

    .line 2290
    invoke-virtual {v6, p2}, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object v0, p0

    .line 2291
    invoke-virtual/range {v0 .. v6}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->sendGeolocationInfo_1_2(IDDLvendor/qti/hardware/radio/ims/V1_2/AddressInfo;)V

    return-void

    .line 2273
    :pswitch_15
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2275
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->getSmsFormat()Ljava/lang/String;

    move-result-object v0

    .line 2276
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2277
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2278
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 2262
    :pswitch_16
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2264
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2265
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2266
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2267
    invoke-virtual {p0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->acknowledgeSmsReport(III)V

    return-void

    .line 2251
    :pswitch_17
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2253
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2254
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2255
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2256
    invoke-virtual {p0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->acknowledgeSms(III)V

    return-void

    .line 2240
    :pswitch_18
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2242
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2243
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;-><init>()V

    .line 2244
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2245
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->sendImsSms(ILvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;)V

    return-void

    .line 2229
    :pswitch_19
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2231
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2232
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_2/HangupRequestInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_2/HangupRequestInfo;-><init>()V

    .line 2233
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_2/HangupRequestInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2234
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->hangup_1_2(ILvendor/qti/hardware/radio/ims/V1_2/HangupRequestInfo;)V

    return-void

    .line 2218
    :pswitch_1a
    const-string v1, "vendor.qti.hardware.radio.ims@1.1::IImsRadio"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2220
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2221
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;-><init>()V

    .line 2222
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2223
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->hangup_1_1(ILvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;)V

    return-void

    .line 2209
    :pswitch_1b
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2211
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2212
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->querySsacStatus(I)V

    return-void

    .line 2200
    :pswitch_1c
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2202
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2203
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->queryVopsStatus(I)V

    return-void

    .line 2191
    :pswitch_1d
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2193
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2194
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->queryVoltePref(I)V

    return-void

    .line 2181
    :pswitch_1e
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2183
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2184
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2185
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->updateVoltePref(II)V

    return-void

    .line 2171
    :pswitch_1f
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2173
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2174
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2175
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->cancelModifyCall(II)V

    return-void

    .line 2161
    :pswitch_20
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2163
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2164
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2165
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->sendRttMessage(ILjava/lang/String;)V

    return-void

    .line 2152
    :pswitch_21
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2154
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2155
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->getImsSubConfig(I)V

    return-void

    .line 2139
    :pswitch_22
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2141
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2142
    invoke-virtual {p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v2

    .line 2143
    invoke-virtual {p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v4

    .line 2144
    new-instance v6, Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;

    invoke-direct {v6}, Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;-><init>()V

    .line 2145
    invoke-virtual {v6, p2}, Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object v0, p0

    .line 2146
    invoke-virtual/range {v0 .. v6}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->sendGeolocationInfo(IDDLvendor/qti/hardware/radio/ims/V1_0/AddressInfo;)V

    return-void

    .line 2128
    :pswitch_23
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2130
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2131
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;-><init>()V

    .line 2132
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2133
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->deflectCall(ILvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;)V

    return-void

    .line 2119
    :pswitch_24
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2121
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2122
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->getRtpErrorStatistics(I)V

    return-void

    .line 2110
    :pswitch_25
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2112
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2113
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->getRtpStatistics(I)V

    return-void

    .line 2097
    :pswitch_26
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2099
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2100
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2101
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2102
    new-instance v4, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;

    invoke-direct {v4}, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;-><init>()V

    .line 2103
    invoke-virtual {v4, p2}, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2104
    invoke-virtual {p0, v1, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->suppServiceStatus(IIILvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;)V

    return-void

    .line 2086
    :pswitch_27
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2088
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2089
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;-><init>()V

    .line 2090
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2091
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->explicitCallTransfer(ILvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;)V

    return-void

    .line 2076
    :pswitch_28
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2078
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2079
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2080
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->setSuppServiceNotification(II)V

    return-void

    .line 2065
    :pswitch_29
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2067
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2068
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2069
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2070
    invoke-virtual {p0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->setCallWaiting(III)V

    return-void

    .line 2055
    :pswitch_2a
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2057
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2058
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2059
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->getCallWaiting(II)V

    return-void

    .line 2044
    :pswitch_2b
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2046
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2047
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;-><init>()V

    .line 2048
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2049
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->setCallForwardStatus(ILvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;)V

    return-void

    .line 2033
    :pswitch_2c
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2035
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2036
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;-><init>()V

    .line 2037
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2038
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->queryCallForwardStatus(ILvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;)V

    return-void

    .line 2022
    :pswitch_2d
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2024
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2025
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;-><init>()V

    .line 2026
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2027
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->modifyCallConfirm(ILvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;)V

    return-void

    .line 2011
    :pswitch_2e
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2013
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2014
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;-><init>()V

    .line 2015
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2016
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->modifyCallInitiate(ILvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;)V

    return-void

    .line 2000
    :pswitch_2f
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2002
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2003
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;-><init>()V

    .line 2004
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2005
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->setUiTtyMode(ILvendor/qti/hardware/radio/ims/V1_0/TtyInfo;)V

    return-void

    .line 1991
    :pswitch_30
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1993
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1994
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->stopDtmf(I)V

    return-void

    .line 1980
    :pswitch_31
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1982
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1983
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;-><init>()V

    .line 1984
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1985
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->startDtmf(ILvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;)V

    return-void

    .line 1969
    :pswitch_32
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1971
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1972
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;-><init>()V

    .line 1973
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1974
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->sendDtmf(ILvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;)V

    return-void

    .line 1960
    :pswitch_33
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1962
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1963
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->exitEmergencyCallbackMode(I)V

    return-void

    .line 1949
    :pswitch_34
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1951
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1952
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;-><init>()V

    .line 1953
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1954
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->setColr(ILvendor/qti/hardware/radio/ims/V1_0/ColrInfo;)V

    return-void

    .line 1940
    :pswitch_35
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1942
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1943
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->getColr(I)V

    return-void

    .line 1929
    :pswitch_36
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1931
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1932
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;-><init>()V

    .line 1933
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1934
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->setClir(ILvendor/qti/hardware/radio/ims/V1_0/ClirInfo;)V

    return-void

    .line 1920
    :pswitch_37
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1922
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1923
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->getClir(I)V

    return-void

    .line 1911
    :pswitch_38
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1913
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1914
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->getClip(I)V

    return-void

    .line 1902
    :pswitch_39
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1904
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1905
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->conference(I)V

    return-void

    .line 1891
    :pswitch_3a
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1893
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1894
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;-><init>()V

    .line 1895
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1896
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->getConfig(ILvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)V

    return-void

    .line 1880
    :pswitch_3b
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1882
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1883
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;-><init>()V

    .line 1884
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1885
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->setConfig(ILvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)V

    return-void

    .line 1870
    :pswitch_3c
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1872
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1873
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1874
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->resume(II)V

    return-void

    .line 1860
    :pswitch_3d
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1862
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1863
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1864
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->hold(II)V

    return-void

    .line 1849
    :pswitch_3e
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1851
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1852
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;-><init>()V

    .line 1853
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1854
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->setServiceStatus(ILvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;)V

    return-void

    .line 1840
    :pswitch_3f
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1842
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1843
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->queryServiceStatus(I)V

    return-void

    .line 1830
    :pswitch_40
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1832
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1833
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1834
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->requestRegistrationChange(II)V

    return-void

    .line 1819
    :pswitch_41
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1821
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1822
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;-><init>()V

    .line 1823
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1824
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->hangup(ILvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;)V

    return-void

    .line 1807
    :pswitch_42
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1809
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1810
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1811
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1812
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 1813
    invoke-virtual {p0, v1, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->answer(IIII)V

    return-void

    .line 1798
    :pswitch_43
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1800
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1801
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->getImsRegistrationState(I)V

    return-void

    .line 1787
    :pswitch_44
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1789
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1790
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;-><init>()V

    .line 1791
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1792
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->addParticipant(ILvendor/qti/hardware/radio/ims/V1_0/DialRequest;)V

    return-void

    .line 1776
    :pswitch_45
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1778
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1779
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;-><init>()V

    .line 1780
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1781
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->dial(ILvendor/qti/hardware/radio/ims/V1_0/DialRequest;)V

    return-void

    .line 1764
    :pswitch_46
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1766
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;

    move-result-object v1

    .line 1767
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v3

    invoke-static {v3}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioIndication;

    move-result-object v3

    .line 1768
    invoke-virtual {p0, v1, v3}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->setCallback(Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioIndication;)V

    .line 1769
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1770
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
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

    .line 1743
    const-string v0, "vendor.qti.hardware.radio.ims@1.8::IImsRadio"

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

    .line 1750
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

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
