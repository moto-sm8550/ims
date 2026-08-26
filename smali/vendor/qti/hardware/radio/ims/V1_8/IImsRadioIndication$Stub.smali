.class public abstract Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;
.super Landroid/os/HwBinder;
.source "IImsRadioIndication.java"

# interfaces
.implements Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1315
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

    .line 1384
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1385
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 1386
    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 1387
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

    .line 1351
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
        -0x2ft
        0x6bt
        -0x7ft
        -0x6bt
        -0x40t
        0xdt
        0x20t
        0xbt
        0x6bt
        0x23t
        -0xdt
        -0x46t
        -0x6ct
        0x20t
        0x59t
        0xft
        0x6dt
        0xdt
        -0x78t
        -0x11t
        -0x68t
        0x2t
        -0x40t
        -0x49t
        0x1et
        0x4et
        0x15t
        -0x4ct
        0x0t
        -0x6bt
        0x5et
        0x77t
    .end array-data

    :array_1
    .array-data 1
        -0x67t
        -0x34t
        0xdt
        0xft
        0x18t
        -0x4t
        0x72t
        0x34t
        -0x45t
        0x50t
        -0x4bt
        -0x17t
        -0x6et
        -0x4dt
        -0x57t
        -0x45t
        0x1bt
        -0x80t
        0xbt
        0x72t
        0x2ct
        0x70t
        -0x2ct
        0x63t
        0x60t
        0x49t
        0x1ct
        -0x77t
        -0x29t
        -0x14t
        0x30t
        -0x7ft
    .end array-data

    :array_2
    .array-data 1
        0x2ct
        0x5ft
        0x8t
        -0x77t
        0x4ct
        0x3dt
        -0x6ft
        0x7ct
        0x7dt
        0x61t
        -0x5t
        0x55t
        -0x13t
        -0x78t
        -0x64t
        -0x7t
        -0x3ct
        -0x72t
        -0x5ft
        0x76t
        0x11t
        -0x70t
        -0x3t
        -0x22t
        0x69t
        0x78t
        -0x4ct
        -0x4dt
        -0x27t
        -0x69t
        0x73t
        0x74t
    .end array-data

    :array_3
    .array-data 1
        -0x6et
        -0x20t
        -0x70t
        -0x69t
        -0x12t
        -0x13t
        0x18t
        0x37t
        -0x23t
        -0xft
        0x54t
        0x68t
        -0x5at
        -0x15t
        0x3at
        -0x2ct
        0x15t
        -0x45t
        0x7et
        -0x64t
        0x6bt
        -0x2ft
        0x0t
        -0x71t
        0x49t
        0x34t
        -0x72t
        0x25t
        0x24t
        -0x26t
        -0x9t
        0xet
    .end array-data

    :array_4
    .array-data 1
        0x20t
        0x1et
        0x57t
        -0x52t
        0x68t
        0x16t
        -0x3dt
        -0x33t
        0x6dt
        -0x41t
        0x6et
        -0x23t
        0x79t
        0x7t
        0x44t
        0x65t
        -0x3ft
        0x71t
        -0x80t
        -0x4t
        -0xat
        -0x34t
        0x2t
        -0x37t
        -0x6at
        0x5bt
        0x23t
        0x26t
        -0x24t
        0x2t
        -0x4ft
        0x1dt
    .end array-data

    :array_5
    .array-data 1
        -0x6ct
        -0x1dt
        0x1et
        -0x60t
        -0x45t
        0xbt
        -0x1ct
        0x2bt
        0x12t
        0x1at
        -0x18t
        0x54t
        -0x6ct
        -0x5dt
        -0x40t
        -0x68t
        0x72t
        0x22t
        0x29t
        0x7dt
        -0x3ct
        0x5bt
        -0x5ft
        -0x43t
        0x27t
        -0xet
        0x38t
        0x7dt
        -0x37t
        -0x7ct
        0x20t
        -0x16t
    .end array-data

    :array_6
    .array-data 1
        0x50t
        -0xbt
        0x58t
        -0x3et
        0x73t
        -0x11t
        0x7ft
        0x78t
        -0x12t
        -0x15t
        -0x3bt
        -0x11t
        -0x61t
        -0x1ct
        -0x28t
        -0x5ft
        0x18t
        0x74t
        0x65t
        0x5t
        -0x4ft
        -0x1t
        0x5dt
        0x74t
        0x7ct
        -0x2ct
        -0x4bt
        -0x2et
        -0x1ct
        -0x7dt
        0x77t
        0x20t
    .end array-data

    :array_7
    .array-data 1
        -0x5t
        0x32t
        -0xbt
        0x0t
        0x37t
        -0x23t
        0xdt
        -0x54t
        0x15t
        -0x29t
        0x38t
        -0x43t
        0x5bt
        0x2et
        0x44t
        0x37t
        0x60t
        -0x38t
        -0x60t
        -0x20t
        0x41t
        -0x55t
        -0x52t
        -0x74t
        0x6at
        -0x7dt
        -0x1at
        -0x4t
        -0xbt
        0xat
        0x23t
        -0x7ct
    .end array-data

    :array_8
    .array-data 1
        0x3bt
        0x14t
        -0x1ct
        -0x45t
        -0x7ft
        0xft
        0x2ft
        -0xct
        -0x7et
        -0x6ct
        0x22t
        0x4et
        0x3ct
        -0x6ft
        -0x16t
        -0x28t
        -0x53t
        -0x9t
        -0xft
        0x4dt
        0x6at
        -0x6ct
        0x5et
        0xft
        0x50t
        0xbt
        -0x14t
        0x78t
        -0x6et
        -0x3et
        0x76t
        0x7et
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

    .line 1323
    new-instance p0, Ljava/util/ArrayList;

    const-string v8, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    const-string v9, "android.hidl.base@1.0::IBase"

    const-string v0, "vendor.qti.hardware.radio.ims@1.8::IImsRadioIndication"

    const-string v1, "vendor.qti.hardware.radio.ims@1.7::IImsRadioIndication"

    const-string v2, "vendor.qti.hardware.radio.ims@1.6::IImsRadioIndication"

    const-string v3, "vendor.qti.hardware.radio.ims@1.5::IImsRadioIndication"

    const-string v4, "vendor.qti.hardware.radio.ims@1.4::IImsRadioIndication"

    const-string v5, "vendor.qti.hardware.radio.ims@1.3::IImsRadioIndication"

    const-string v6, "vendor.qti.hardware.radio.ims@1.2::IImsRadioIndication"

    const-string v7, "vendor.qti.hardware.radio.ims@1.1::IImsRadioIndication"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 0

    .line 1345
    const-string p0, "vendor.qti.hardware.radio.ims@1.8::IImsRadioIndication"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 1394
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1424
    const-string p4, "vendor.qti.hardware.radio.ims@1.7::IImsRadioIndication"

    const-string v0, "vendor.qti.hardware.radio.ims@1.4::IImsRadioIndication"

    const-string v1, "vendor.qti.hardware.radio.ims@1.3::IImsRadioIndication"

    const-string v2, "vendor.qti.hardware.radio.ims@1.8::IImsRadioIndication"

    const-string v3, "vendor.qti.hardware.radio.ims@1.5::IImsRadioIndication"

    const-string v4, "vendor.qti.hardware.radio.ims@1.2::IImsRadioIndication"

    const-string v5, "vendor.qti.hardware.radio.ims@1.6::IImsRadioIndication"

    const-string v6, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    packed-switch p1, :pswitch_data_0

    const/4 p4, 0x0

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    return-void

    .line 2045
    :sswitch_0
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2047
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->notifySyspropsChanged()V

    return-void

    .line 2034
    :sswitch_1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2036
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 2037
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2038
    invoke-virtual {p0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2039
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 2024
    :sswitch_2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2026
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->ping()V

    .line 2027
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2028
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 2011
    :sswitch_3
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2013
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->setHALInstrumentation()V

    return-void

    .line 1977
    :sswitch_4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1979
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1980
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1982
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1984
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v0, 0x8

    .line 1985
    invoke-virtual {p1, v0, v1, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    .line 1986
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1987
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, p2, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge p4, p2, :cond_1

    mul-int/lit8 v1, p4, 0x20

    int-to-long v1, v1

    .line 1991
    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_0

    .line 1993
    array-length v4, v3

    const/16 v5, 0x20

    if-ne v4, v5, :cond_0

    .line 1997
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 1994
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-wide/16 v1, 0x0

    .line 2001
    invoke-virtual {p1, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 2003
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2005
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 1966
    :sswitch_5
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1968
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 1969
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1970
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1971
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 1954
    :sswitch_6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1956
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 1957
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1958
    invoke-virtual {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1959
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1960
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 1943
    :sswitch_7
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1945
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1946
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1947
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1948
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 1935
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1937
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onConferenceCallStateCompleted()V

    return-void

    .line 1926
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1928
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1929
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onCallStateChanged_1_8(Ljava/util/ArrayList;)V

    return-void

    .line 1917
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1919
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1920
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onSmsCallBackModeChanged(I)V

    return-void

    .line 1908
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1910
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1911
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onServiceDomainChanged(I)V

    return-void

    .line 1899
    :pswitch_4
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1901
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1902
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onSipDtmfReceived(Ljava/lang/String;)V

    return-void

    .line 1890
    :pswitch_5
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1892
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1893
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onCallStateChanged_1_7(Ljava/util/ArrayList;)V

    return-void

    .line 1881
    :pswitch_6
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1883
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1884
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onRetrievingGeoLocationDataStatus(I)V

    return-void

    .line 1871
    :pswitch_7
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1873
    new-instance p1, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;

    invoke-direct {p1}, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;-><init>()V

    .line 1874
    invoke-virtual {p1, p2}, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1875
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onIncomingCallAutoRejected_1_6(Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;)V

    return-void

    .line 1859
    :pswitch_8
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1861
    new-instance p1, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;

    invoke-direct {p1}, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;-><init>()V

    .line 1862
    invoke-virtual {p1, p2}, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1863
    new-instance p3, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;

    invoke-direct {p3}, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;-><init>()V

    .line 1864
    invoke-virtual {p3, p2}, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1865
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onIncomingCallComposerCallAutoRejected(Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;)V

    return-void

    .line 1849
    :pswitch_9
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1851
    new-instance p1, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;

    invoke-direct {p1}, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;-><init>()V

    .line 1852
    invoke-virtual {p1, p2}, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1853
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onCallComposerInfoAvailable(Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;)V

    return-void

    .line 1837
    :pswitch_a
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1839
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1840
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 1841
    new-instance p4, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {p4}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    .line 1842
    invoke-virtual {p4, p2}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1843
    invoke-virtual {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onUssdReceived(ILjava/lang/String;Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    return-void

    .line 1827
    :pswitch_b
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1829
    new-instance p1, Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;

    invoke-direct {p1}, Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;-><init>()V

    .line 1830
    invoke-virtual {p1, p2}, Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1831
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onHandover_1_6(Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;)V

    return-void

    .line 1817
    :pswitch_c
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1819
    new-instance p1, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;

    invoke-direct {p1}, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;-><init>()V

    .line 1820
    invoke-virtual {p1, p2}, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1821
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onRegistrationChanged_1_6(Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;)V

    return-void

    .line 1808
    :pswitch_d
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1810
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1811
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onServiceStatusChanged_1_6(Ljava/util/ArrayList;)V

    return-void

    .line 1799
    :pswitch_e
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1801
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1802
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onCallStateChanged_1_6(Ljava/util/ArrayList;)V

    return-void

    .line 1788
    :pswitch_f
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1790
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1791
    new-instance p3, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {p3}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    .line 1792
    invoke-virtual {p3, p2}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1793
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onUssdMessageFailed(ILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    return-void

    .line 1779
    :pswitch_10
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1781
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 1782
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onModemSupportsWfcRoamingModeConfiguration(Z)V

    return-void

    .line 1769
    :pswitch_11
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1771
    new-instance p1, Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;

    invoke-direct {p1}, Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;-><init>()V

    .line 1772
    invoke-virtual {p1, p2}, Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1773
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onIncomingCallAutoRejected_1_5(Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;)V

    return-void

    .line 1760
    :pswitch_12
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1762
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1763
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onCallStateChanged_1_5(Ljava/util/ArrayList;)V

    return-void

    .line 1751
    :pswitch_13
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1753
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1754
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onCallStateChanged_1_4(Ljava/util/ArrayList;)V

    return-void

    .line 1743
    :pswitch_14
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1745
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onMultiIdentityInfoPending()V

    return-void

    .line 1734
    :pswitch_15
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1736
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1737
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onMultiIdentityRegistrationStatusChange(Ljava/util/ArrayList;)V

    return-void

    .line 1725
    :pswitch_16
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1727
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1728
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onVoiceInfoChanged(I)V

    return-void

    .line 1715
    :pswitch_17
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1717
    new-instance p1, Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;

    invoke-direct {p1}, Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;-><init>()V

    .line 1718
    invoke-virtual {p1, p2}, Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1719
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onIncomingCallAutoRejected(Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;)V

    return-void

    .line 1706
    :pswitch_18
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1708
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1709
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onCallStateChanged_1_3(Ljava/util/ArrayList;)V

    return-void

    .line 1697
    :pswitch_19
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1699
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 1700
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onVopsChanged(Z)V

    return-void

    .line 1687
    :pswitch_1a
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1689
    new-instance p1, Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;

    invoke-direct {p1}, Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;-><init>()V

    .line 1690
    invoke-virtual {p1, p2}, Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1691
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onIncomingImsSms(Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;)V

    return-void

    .line 1677
    :pswitch_1b
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1679
    new-instance p1, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;

    invoke-direct {p1}, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;-><init>()V

    .line 1680
    invoke-virtual {p1, p2}, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1681
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onImsSmsStatusReport(Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;)V

    return-void

    .line 1668
    :pswitch_1c
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1670
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1671
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onCallStateChanged_1_2(Ljava/util/ArrayList;)V

    return-void

    .line 1659
    :pswitch_1d
    const-string p1, "vendor.qti.hardware.radio.ims@1.1::IImsRadioIndication"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1661
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1662
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onCallStateChanged_1_1(Ljava/util/ArrayList;)V

    return-void

    .line 1649
    :pswitch_1e
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1651
    new-instance p1, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;

    invoke-direct {p1}, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;-><init>()V

    .line 1652
    invoke-virtual {p1, p2}, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1653
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onSsacStatusChangedIndication(Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;)V

    return-void

    .line 1639
    :pswitch_1f
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1641
    new-instance p1, Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;

    invoke-direct {p1}, Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;-><init>()V

    .line 1642
    invoke-virtual {p1, p2}, Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1643
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onVopsStatusChangedIndication(Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;)V

    return-void

    .line 1629
    :pswitch_20
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1631
    new-instance p1, Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;

    invoke-direct {p1}, Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;-><init>()V

    .line 1632
    invoke-virtual {p1, p2}, Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1633
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onSupplementaryServiceIndication(Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;)V

    return-void

    .line 1620
    :pswitch_21
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1622
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1623
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onVoWiFiCallQuality(I)V

    return-void

    .line 1611
    :pswitch_22
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1613
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1614
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onRttMessageReceived(Ljava/lang/String;)V

    return-void

    .line 1597
    :pswitch_23
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1599
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 1600
    new-instance p3, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;

    invoke-direct {p3}, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;-><init>()V

    .line 1601
    invoke-virtual {p3, p2}, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1602
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p4

    .line 1603
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;-><init>()V

    .line 1604
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1605
    invoke-virtual {p0, p1, p3, p4, v0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onRegistrationBlockStatus(ZLvendor/qti/hardware/radio/ims/V1_0/BlockStatus;ZLvendor/qti/hardware/radio/ims/V1_0/BlockStatus;)V

    return-void

    .line 1587
    :pswitch_24
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1589
    new-instance p1, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;

    invoke-direct {p1}, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;-><init>()V

    .line 1590
    invoke-virtual {p1, p2}, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1591
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onParticipantStatusInfo(Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;)V

    return-void

    .line 1577
    :pswitch_25
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1579
    new-instance p1, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;

    invoke-direct {p1}, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;-><init>()V

    .line 1580
    invoke-virtual {p1, p2}, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1581
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onImsSubConfigChanged(Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;)V

    return-void

    .line 1567
    :pswitch_26
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1569
    invoke-virtual {p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide p3

    .line 1570
    invoke-virtual {p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide p1

    .line 1571
    invoke-virtual {p0, p3, p4, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onGeolocationInfoRequested(DD)V

    return-void

    .line 1557
    :pswitch_27
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1559
    new-instance p1, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;

    invoke-direct {p1}, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;-><init>()V

    .line 1560
    invoke-virtual {p1, p2}, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1561
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onMessageWaiting(Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;)V

    return-void

    .line 1547
    :pswitch_28
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1549
    new-instance p1, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;

    invoke-direct {p1}, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;-><init>()V

    .line 1550
    invoke-virtual {p1, p2}, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1551
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onSuppServiceNotification(Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;)V

    return-void

    .line 1537
    :pswitch_29
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1539
    new-instance p1, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;

    invoke-direct {p1}, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;-><init>()V

    .line 1540
    invoke-virtual {p1, p2}, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1541
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onModifyCall(Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;)V

    return-void

    .line 1527
    :pswitch_2a
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1529
    new-instance p1, Lvendor/qti/hardware/radio/ims/V1_0/ViceInfo;

    invoke-direct {p1}, Lvendor/qti/hardware/radio/ims/V1_0/ViceInfo;-><init>()V

    .line 1530
    invoke-virtual {p1, p2}, Lvendor/qti/hardware/radio/ims/V1_0/ViceInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1531
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onRefreshViceInfo(Lvendor/qti/hardware/radio/ims/V1_0/ViceInfo;)V

    return-void

    .line 1517
    :pswitch_2b
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1519
    new-instance p1, Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;

    invoke-direct {p1}, Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;-><init>()V

    .line 1520
    invoke-virtual {p1, p2}, Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1521
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onRefreshConferenceInfo(Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;)V

    return-void

    .line 1507
    :pswitch_2c
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1509
    new-instance p1, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;

    invoke-direct {p1}, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;-><init>()V

    .line 1510
    invoke-virtual {p1, p2}, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1511
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onTtyNotification(Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;)V

    return-void

    .line 1499
    :pswitch_2d
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1501
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onExitEmergencyCallBackMode()V

    return-void

    .line 1491
    :pswitch_2e
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1493
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onEnterEmergencyCallBackMode()V

    return-void

    .line 1482
    :pswitch_2f
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1484
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1485
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onRadioStateChanged(I)V

    return-void

    .line 1473
    :pswitch_30
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1475
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1476
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onServiceStatusChanged(Ljava/util/ArrayList;)V

    return-void

    .line 1463
    :pswitch_31
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1465
    new-instance p1, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;

    invoke-direct {p1}, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;-><init>()V

    .line 1466
    invoke-virtual {p1, p2}, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1467
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onHandover(Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;)V

    return-void

    .line 1453
    :pswitch_32
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1455
    new-instance p1, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;

    invoke-direct {p1}, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;-><init>()V

    .line 1456
    invoke-virtual {p1, p2}, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1457
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onRegistrationChanged(Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;)V

    return-void

    .line 1444
    :pswitch_33
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1446
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1447
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onRingbackTone(I)V

    return-void

    .line 1436
    :pswitch_34
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1438
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onRing()V

    return-void

    .line 1427
    :pswitch_35
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1429
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1430
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onCallStateChanged(Ljava/util/ArrayList;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 1406
    const-string v0, "vendor.qti.hardware.radio.ims@1.8::IImsRadioIndication"

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

    .line 1413
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

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
