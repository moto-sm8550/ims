.class public abstract Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;
.super Landroid/os/HwBinder;
.source "IImsRadio.java"

# interfaces
.implements Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1689
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

    .line 1760
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1761
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 1762
    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 1763
    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    return-object p0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 1726
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

    new-array v11, v0, [B

    fill-array-data v11, :array_a

    filled-new-array/range {v1 .. v11}, [[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    nop

    :array_0
    .array-data 1
        -0xdt
        0x1ft
        -0x41t
        -0x6et
        0x2bt
        -0x75t
        -0x45t
        -0x47t
        -0x4t
        0x48t
        0x5dt
        -0x5ft
        0x19t
        -0x4t
        0x78t
        -0x7bt
        0x38t
        0x9t
        -0x6et
        0x25t
        0x68t
        -0x4t
        0x64t
        0x19t
        -0x53t
        -0x40t
        -0x1dt
        0xct
        -0x2et
        -0x15t
        0x5dt
        0x62t
    .end array-data

    :array_1
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

    :array_2
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

    :array_3
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

    :array_4
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

    :array_5
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

    :array_6
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

    :array_7
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

    :array_8
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

    :array_9
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

    :array_a
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
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1697
    new-instance p0, Ljava/util/ArrayList;

    const-string v9, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    const-string v10, "android.hidl.base@1.0::IBase"

    const-string v0, "vendor.qti.hardware.radio.ims@1.9::IImsRadio"

    const-string v1, "vendor.qti.hardware.radio.ims@1.8::IImsRadio"

    const-string v2, "vendor.qti.hardware.radio.ims@1.7::IImsRadio"

    const-string v3, "vendor.qti.hardware.radio.ims@1.6::IImsRadio"

    const-string v4, "vendor.qti.hardware.radio.ims@1.5::IImsRadio"

    const-string v5, "vendor.qti.hardware.radio.ims@1.4::IImsRadio"

    const-string v6, "vendor.qti.hardware.radio.ims@1.3::IImsRadio"

    const-string v7, "vendor.qti.hardware.radio.ims@1.2::IImsRadio"

    const-string v8, "vendor.qti.hardware.radio.ims@1.1::IImsRadio"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 0

    .line 1720
    const-string p0, "vendor.qti.hardware.radio.ims@1.9::IImsRadio"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 1770
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v2, p3

    .line 1800
    const-string v3, "vendor.qti.hardware.radio.ims@1.9::IImsRadio"

    const-string v4, "vendor.qti.hardware.radio.ims@1.8::IImsRadio"

    const-string v5, "vendor.qti.hardware.radio.ims@1.3::IImsRadio"

    const-string v6, "vendor.qti.hardware.radio.ims@1.5::IImsRadio"

    const-string v7, "vendor.qti.hardware.radio.ims@1.4::IImsRadio"

    const-string v8, "vendor.qti.hardware.radio.ims@1.2::IImsRadio"

    const-string v9, "vendor.qti.hardware.radio.ims@1.6::IImsRadio"

    const/4 v10, 0x0

    const-string v11, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    packed-switch p1, :pswitch_data_0

    const-string v3, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    return-void

    .line 2687
    :sswitch_0
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2689
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->notifySyspropsChanged()V

    return-void

    .line 2676
    :sswitch_1
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2678
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 2679
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2680
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2681
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 2666
    :sswitch_2
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2668
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->ping()V

    .line 2669
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2670
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 2653
    :sswitch_3
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2655
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->setHALInstrumentation()V

    return-void

    .line 2619
    :sswitch_4
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2621
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 2622
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2624
    new-instance v1, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v1, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 2626
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-wide/16 v4, 0x8

    .line 2627
    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0xc

    .line 2628
    invoke-virtual {v1, v4, v5, v10}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 2629
    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v5, v3, 0x20

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v10, v3, :cond_1

    mul-int/lit8 v5, v10, 0x20

    int-to-long v5, v5

    .line 2633
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    if-eqz v7, :cond_0

    .line 2635
    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_0

    .line 2639
    invoke-virtual {v4, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 2636
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array element is not of the expected length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-wide/16 v5, 0x0

    .line 2643
    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 2645
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2647
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 2608
    :sswitch_5
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2610
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 2611
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2612
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2613
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 2596
    :sswitch_6
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2598
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v3

    .line 2599
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2600
    invoke-virtual {p0, v3, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 2601
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2602
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 2585
    :sswitch_7
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2587
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 2588
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2589
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2590
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 2574
    :pswitch_0
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2576
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2577
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;-><init>()V

    .line 2578
    invoke-virtual {v3, p2}, Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2579
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->sendVosActionInfo(ILvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;)V

    return-void

    .line 2564
    :pswitch_1
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2566
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2567
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 2568
    invoke-virtual {p0, v2, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->sendVosSupportStatus(IZ)V

    return-void

    .line 2553
    :pswitch_2
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2555
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2556
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;-><init>()V

    .line 2557
    invoke-virtual {v3, p2}, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2558
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->getConfig_1_8(ILvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;)V

    return-void

    .line 2542
    :pswitch_3
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2544
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2545
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;-><init>()V

    .line 2546
    invoke-virtual {v3, p2}, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2547
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->setConfig_1_8(ILvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;)V

    return-void

    .line 2532
    :pswitch_4
    const-string v2, "vendor.qti.hardware.radio.ims@1.7::IImsRadio"

    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2534
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2535
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2536
    invoke-virtual {p0, v2, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->sendSipDtmf(ILjava/lang/String;)V

    return-void

    .line 2519
    :pswitch_5
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2521
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2522
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;-><init>()V

    .line 2523
    invoke-virtual {v3, p2}, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2524
    new-instance v4, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;

    invoke-direct {v4}, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;-><init>()V

    .line 2525
    invoke-virtual {v4, p2}, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2526
    invoke-virtual {p0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->callComposerDial(ILvendor/qti/hardware/radio/ims/V1_6/DialRequest;Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;)V

    return-void

    .line 2510
    :pswitch_6
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2512
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2513
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->cancelPendingUssd(I)V

    return-void

    .line 2500
    :pswitch_7
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2502
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2503
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2504
    invoke-virtual {p0, v2, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->sendUssd(ILjava/lang/String;)V

    return-void

    .line 2486
    :pswitch_8
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2488
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    move v3, v2

    .line 2489
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    move v4, v3

    .line 2490
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    move v5, v4

    .line 2491
    new-instance v4, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;

    invoke-direct {v4}, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;-><init>()V

    .line 2492
    invoke-virtual {v4, p2}, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move v1, v5

    .line 2493
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    .line 2494
    invoke-virtual/range {v0 .. v5}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->suppServiceStatus_1_6(IIILvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;Ljava/lang/String;)V

    return-void

    .line 2476
    :pswitch_9
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2478
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2479
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2480
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->setServiceStatus_1_6(ILjava/util/ArrayList;)V

    return-void

    .line 2460
    :pswitch_a
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2462
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2463
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;-><init>()V

    .line 2464
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2465
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2466
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v4

    .line 2467
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 2468
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v6

    .line 2469
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v7

    move-object v0, p0

    .line 2470
    invoke-virtual/range {v0 .. v7}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->emergencyDial_1_6(ILvendor/qti/hardware/radio/ims/V1_6/DialRequest;ILjava/util/ArrayList;IZZ)V

    return-void

    .line 2449
    :pswitch_b
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2451
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2452
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;-><init>()V

    .line 2453
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2454
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->dial_1_6(ILvendor/qti/hardware/radio/ims/V1_6/DialRequest;)V

    return-void

    .line 2438
    :pswitch_c
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2440
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2441
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;-><init>()V

    .line 2442
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2443
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->setConfig_1_6(ILvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;)V

    return-void

    .line 2427
    :pswitch_d
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2429
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2430
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2431
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2432
    invoke-virtual {p0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->acknowledgeSms_1_5(III)V

    return-void

    .line 2411
    :pswitch_e
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2413
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2414
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;-><init>()V

    .line 2415
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2416
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2417
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v4

    .line 2418
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 2419
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v6

    .line 2420
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v7

    move-object v0, p0

    .line 2421
    invoke-virtual/range {v0 .. v7}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->emergencyDial(ILvendor/qti/hardware/radio/ims/V1_4/DialRequest;ILjava/util/ArrayList;IZZ)V

    return-void

    .line 2400
    :pswitch_f
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2402
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2403
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;-><init>()V

    .line 2404
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2405
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->setConfig_1_5(ILvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;)V

    return-void

    .line 2389
    :pswitch_10
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2391
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2392
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;-><init>()V

    .line 2393
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2394
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->addParticipant_1_4(ILvendor/qti/hardware/radio/ims/V1_4/DialRequest;)V

    return-void

    .line 2378
    :pswitch_11
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2380
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2381
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;-><init>()V

    .line 2382
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2383
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->dial_1_4(ILvendor/qti/hardware/radio/ims/V1_4/DialRequest;)V

    return-void

    .line 2368
    :pswitch_12
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2370
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2371
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2372
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->queryVirtualLineInfo(ILjava/lang/String;)V

    return-void

    .line 2358
    :pswitch_13
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2360
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2361
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2362
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->registerMultiIdentityLines(ILjava/util/ArrayList;)V

    return-void

    .line 2347
    :pswitch_14
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2349
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2350
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;-><init>()V

    .line 2351
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2352
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->setColr_1_3(ILvendor/qti/hardware/radio/ims/V1_3/ColrInfo;)V

    return-void

    .line 2336
    :pswitch_15
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2338
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2339
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;-><init>()V

    .line 2340
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2341
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->hangup_1_3(ILvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;)V

    return-void

    .line 2323
    :pswitch_16
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2325
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2326
    invoke-virtual {p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v2

    .line 2327
    invoke-virtual {p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v4

    .line 2328
    new-instance v6, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;

    invoke-direct {v6}, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;-><init>()V

    .line 2329
    invoke-virtual {v6, p2}, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object v0, p0

    .line 2330
    invoke-virtual/range {v0 .. v6}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->sendGeolocationInfo_1_2(IDDLvendor/qti/hardware/radio/ims/V1_2/AddressInfo;)V

    return-void

    .line 2312
    :pswitch_17
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2314
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->getSmsFormat()Ljava/lang/String;

    move-result-object v0

    .line 2315
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2316
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2317
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 2301
    :pswitch_18
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2303
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2304
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2305
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2306
    invoke-virtual {p0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->acknowledgeSmsReport(III)V

    return-void

    .line 2290
    :pswitch_19
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2292
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2293
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2294
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2295
    invoke-virtual {p0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->acknowledgeSms(III)V

    return-void

    .line 2279
    :pswitch_1a
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2281
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2282
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;-><init>()V

    .line 2283
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2284
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->sendImsSms(ILvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;)V

    return-void

    .line 2268
    :pswitch_1b
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2270
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2271
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_2/HangupRequestInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_2/HangupRequestInfo;-><init>()V

    .line 2272
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_2/HangupRequestInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2273
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->hangup_1_2(ILvendor/qti/hardware/radio/ims/V1_2/HangupRequestInfo;)V

    return-void

    .line 2257
    :pswitch_1c
    const-string v1, "vendor.qti.hardware.radio.ims@1.1::IImsRadio"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2259
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2260
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;-><init>()V

    .line 2261
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2262
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->hangup_1_1(ILvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;)V

    return-void

    .line 2248
    :pswitch_1d
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2250
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2251
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->querySsacStatus(I)V

    return-void

    .line 2239
    :pswitch_1e
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2241
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2242
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->queryVopsStatus(I)V

    return-void

    .line 2230
    :pswitch_1f
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2232
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2233
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->queryVoltePref(I)V

    return-void

    .line 2220
    :pswitch_20
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2222
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2223
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2224
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->updateVoltePref(II)V

    return-void

    .line 2210
    :pswitch_21
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2212
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2213
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2214
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->cancelModifyCall(II)V

    return-void

    .line 2200
    :pswitch_22
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2202
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2203
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2204
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->sendRttMessage(ILjava/lang/String;)V

    return-void

    .line 2191
    :pswitch_23
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2193
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2194
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->getImsSubConfig(I)V

    return-void

    .line 2178
    :pswitch_24
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2180
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2181
    invoke-virtual {p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v2

    .line 2182
    invoke-virtual {p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v4

    .line 2183
    new-instance v6, Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;

    invoke-direct {v6}, Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;-><init>()V

    .line 2184
    invoke-virtual {v6, p2}, Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object v0, p0

    .line 2185
    invoke-virtual/range {v0 .. v6}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->sendGeolocationInfo(IDDLvendor/qti/hardware/radio/ims/V1_0/AddressInfo;)V

    return-void

    .line 2167
    :pswitch_25
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2169
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2170
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;-><init>()V

    .line 2171
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2172
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->deflectCall(ILvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;)V

    return-void

    .line 2158
    :pswitch_26
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2160
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2161
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->getRtpErrorStatistics(I)V

    return-void

    .line 2149
    :pswitch_27
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2151
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2152
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->getRtpStatistics(I)V

    return-void

    .line 2136
    :pswitch_28
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2138
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2139
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2140
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2141
    new-instance v4, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;

    invoke-direct {v4}, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;-><init>()V

    .line 2142
    invoke-virtual {v4, p2}, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2143
    invoke-virtual {p0, v1, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->suppServiceStatus(IIILvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;)V

    return-void

    .line 2125
    :pswitch_29
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2127
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2128
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;-><init>()V

    .line 2129
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2130
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->explicitCallTransfer(ILvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;)V

    return-void

    .line 2115
    :pswitch_2a
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2117
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2118
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2119
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->setSuppServiceNotification(II)V

    return-void

    .line 2104
    :pswitch_2b
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2106
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2107
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2108
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2109
    invoke-virtual {p0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->setCallWaiting(III)V

    return-void

    .line 2094
    :pswitch_2c
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2096
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2097
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2098
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->getCallWaiting(II)V

    return-void

    .line 2083
    :pswitch_2d
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2085
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2086
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;-><init>()V

    .line 2087
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2088
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->setCallForwardStatus(ILvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;)V

    return-void

    .line 2072
    :pswitch_2e
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2074
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2075
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;-><init>()V

    .line 2076
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2077
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->queryCallForwardStatus(ILvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;)V

    return-void

    .line 2061
    :pswitch_2f
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2063
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2064
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;-><init>()V

    .line 2065
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2066
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->modifyCallConfirm(ILvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;)V

    return-void

    .line 2050
    :pswitch_30
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2052
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2053
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;-><init>()V

    .line 2054
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2055
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->modifyCallInitiate(ILvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;)V

    return-void

    .line 2039
    :pswitch_31
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2041
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2042
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;-><init>()V

    .line 2043
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2044
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->setUiTtyMode(ILvendor/qti/hardware/radio/ims/V1_0/TtyInfo;)V

    return-void

    .line 2030
    :pswitch_32
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2032
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2033
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->stopDtmf(I)V

    return-void

    .line 2019
    :pswitch_33
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2021
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2022
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;-><init>()V

    .line 2023
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2024
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->startDtmf(ILvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;)V

    return-void

    .line 2008
    :pswitch_34
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2010
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2011
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;-><init>()V

    .line 2012
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2013
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->sendDtmf(ILvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;)V

    return-void

    .line 1999
    :pswitch_35
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2001
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2002
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->exitEmergencyCallbackMode(I)V

    return-void

    .line 1988
    :pswitch_36
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1990
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1991
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;-><init>()V

    .line 1992
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1993
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->setColr(ILvendor/qti/hardware/radio/ims/V1_0/ColrInfo;)V

    return-void

    .line 1979
    :pswitch_37
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1981
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1982
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->getColr(I)V

    return-void

    .line 1968
    :pswitch_38
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1970
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1971
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;-><init>()V

    .line 1972
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1973
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->setClir(ILvendor/qti/hardware/radio/ims/V1_0/ClirInfo;)V

    return-void

    .line 1959
    :pswitch_39
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1961
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1962
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->getClir(I)V

    return-void

    .line 1950
    :pswitch_3a
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1952
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1953
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->getClip(I)V

    return-void

    .line 1941
    :pswitch_3b
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1943
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1944
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->conference(I)V

    return-void

    .line 1930
    :pswitch_3c
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1932
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1933
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;-><init>()V

    .line 1934
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1935
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->getConfig(ILvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)V

    return-void

    .line 1919
    :pswitch_3d
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1921
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1922
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;-><init>()V

    .line 1923
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1924
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->setConfig(ILvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)V

    return-void

    .line 1909
    :pswitch_3e
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1911
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1912
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1913
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->resume(II)V

    return-void

    .line 1899
    :pswitch_3f
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1901
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1902
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1903
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->hold(II)V

    return-void

    .line 1888
    :pswitch_40
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1890
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1891
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;-><init>()V

    .line 1892
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1893
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->setServiceStatus(ILvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;)V

    return-void

    .line 1879
    :pswitch_41
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1881
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1882
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->queryServiceStatus(I)V

    return-void

    .line 1869
    :pswitch_42
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1871
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1872
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1873
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->requestRegistrationChange(II)V

    return-void

    .line 1858
    :pswitch_43
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1860
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1861
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;-><init>()V

    .line 1862
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1863
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->hangup(ILvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;)V

    return-void

    .line 1846
    :pswitch_44
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1848
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1849
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1850
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1851
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 1852
    invoke-virtual {p0, v1, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->answer(IIII)V

    return-void

    .line 1837
    :pswitch_45
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1839
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1840
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->getImsRegistrationState(I)V

    return-void

    .line 1826
    :pswitch_46
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1828
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1829
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;-><init>()V

    .line 1830
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1831
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->addParticipant(ILvendor/qti/hardware/radio/ims/V1_0/DialRequest;)V

    return-void

    .line 1815
    :pswitch_47
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1817
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1818
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;-><init>()V

    .line 1819
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1820
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->dial(ILvendor/qti/hardware/radio/ims/V1_0/DialRequest;)V

    return-void

    .line 1803
    :pswitch_48
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1805
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;

    move-result-object v1

    .line 1806
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v3

    invoke-static {v3}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioIndication;

    move-result-object v3

    .line 1807
    invoke-virtual {p0, v1, v3}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->setCallback(Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioIndication;)V

    .line 1808
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1809
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_48
        :pswitch_47
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

    .line 1782
    const-string v0, "vendor.qti.hardware.radio.ims@1.9::IImsRadio"

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

    .line 1789
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

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
