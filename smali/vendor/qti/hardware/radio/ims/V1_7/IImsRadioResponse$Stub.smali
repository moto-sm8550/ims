.class public abstract Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;
.super Landroid/os/HwBinder;
.source "IImsRadioResponse.java"

# interfaces
.implements Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1358
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

    .line 1423
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1424
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 1425
    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 1426
    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    return-object p0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 1392
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

    filled-new-array/range {v1 .. v8}, [[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    :array_0
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

    :array_1
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

    :array_2
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

    :array_3
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

    :array_4
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

    :array_5
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

    :array_6
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

    :array_7
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
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1366
    new-instance p0, Ljava/util/ArrayList;

    const-string v6, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    const-string v7, "android.hidl.base@1.0::IBase"

    const-string v0, "vendor.qti.hardware.radio.ims@1.7::IImsRadioResponse"

    const-string v1, "vendor.qti.hardware.radio.ims@1.6::IImsRadioResponse"

    const-string v2, "vendor.qti.hardware.radio.ims@1.5::IImsRadioResponse"

    const-string v3, "vendor.qti.hardware.radio.ims@1.4::IImsRadioResponse"

    const-string v4, "vendor.qti.hardware.radio.ims@1.3::IImsRadioResponse"

    const-string v5, "vendor.qti.hardware.radio.ims@1.2::IImsRadioResponse"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 0

    .line 1386
    const-string p0, "vendor.qti.hardware.radio.ims@1.7::IImsRadioResponse"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 1433
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1463
    const-string p4, "vendor.qti.hardware.radio.ims@1.5::IImsRadioResponse"

    const-string v0, "vendor.qti.hardware.radio.ims@1.4::IImsRadioResponse"

    const-string v1, "vendor.qti.hardware.radio.ims@1.3::IImsRadioResponse"

    const-string v2, "vendor.qti.hardware.radio.ims@1.6::IImsRadioResponse"

    const-string v3, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    packed-switch p1, :pswitch_data_0

    const/4 p4, 0x0

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    return-void

    .line 2157
    :sswitch_0
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2159
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->notifySyspropsChanged()V

    return-void

    .line 2146
    :sswitch_1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2148
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 2149
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2150
    invoke-virtual {p0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2151
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 2136
    :sswitch_2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2138
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->ping()V

    .line 2139
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2140
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 2123
    :sswitch_3
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2125
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->setHALInstrumentation()V

    return-void

    .line 2089
    :sswitch_4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2091
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 2092
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2094
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 2096
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v0, 0x8

    .line 2097
    invoke-virtual {p1, v0, v1, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    .line 2098
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 2099
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, p2, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge p4, p2, :cond_1

    mul-int/lit8 v1, p4, 0x20

    int-to-long v1, v1

    .line 2103
    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_0

    .line 2105
    array-length v4, v3

    const/16 v5, 0x20

    if-ne v4, v5, :cond_0

    .line 2109
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 2106
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-wide/16 v1, 0x0

    .line 2113
    invoke-virtual {p1, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 2115
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2117
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 2078
    :sswitch_5
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2080
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 2081
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2082
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2083
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 2066
    :sswitch_6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2068
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 2069
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 2070
    invoke-virtual {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 2071
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2072
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 2055
    :sswitch_7
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2057
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 2058
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2059
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2060
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 2045
    :pswitch_0
    const-string p1, "vendor.qti.hardware.radio.ims@1.7::IImsRadioResponse"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2047
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2048
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2049
    invoke-virtual {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->sendSipDtmfResponse(II)V

    return-void

    .line 2033
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2035
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2036
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2037
    new-instance p4, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {p4}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    .line 2038
    invoke-virtual {p4, p2}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2039
    invoke-virtual {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->cancelPendingUssdResponse(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    return-void

    .line 2021
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2023
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2024
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2025
    new-instance p4, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {p4}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    .line 2026
    invoke-virtual {p4, p2}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2027
    invoke-virtual {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->sendUssdResponse(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    return-void

    .line 2010
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2012
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2013
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2014
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 2015
    invoke-virtual {p0, p1, p3, p2}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->queryServiceStatusResponse_1_6(IILjava/util/ArrayList;)V

    return-void

    .line 1998
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2000
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2001
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2002
    new-instance p4, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;

    invoke-direct {p4}, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;-><init>()V

    .line 2003
    invoke-virtual {p4, p2}, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2004
    invoke-virtual {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->getRegistrationResponse_1_6(IILvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;)V

    return-void

    .line 1986
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1988
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1989
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1990
    new-instance p4, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;

    invoke-direct {p4}, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;-><init>()V

    .line 1991
    invoke-virtual {p4, p2}, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1992
    invoke-virtual {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->setConfigResponse_1_6(IILvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;)V

    return-void

    .line 1974
    :pswitch_6
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1976
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1977
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1978
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p4

    .line 1979
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1980
    invoke-virtual {p0, p1, p3, p4, p2}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->sendImsSmsResponse_1_5(IIII)V

    return-void

    .line 1962
    :pswitch_7
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1964
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1965
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1966
    new-instance p4, Lvendor/qti/hardware/radio/ims/V1_5/CallForwardStatusInfo;

    invoke-direct {p4}, Lvendor/qti/hardware/radio/ims/V1_5/CallForwardStatusInfo;-><init>()V

    .line 1967
    invoke-virtual {p4, p2}, Lvendor/qti/hardware/radio/ims/V1_5/CallForwardStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1968
    invoke-virtual {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->setCallForwardStatusResponse(IILvendor/qti/hardware/radio/ims/V1_5/CallForwardStatusInfo;)V

    return-void

    .line 1951
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1953
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1954
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 1955
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1956
    invoke-virtual {p0, p1, p3, p2}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->queryVirtualLineInfoResponse(ILjava/lang/String;Ljava/util/ArrayList;)V

    return-void

    .line 1941
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1943
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1944
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1945
    invoke-virtual {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->registerMultiIdentityLinesResponse(II)V

    return-void

    .line 1929
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1931
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1932
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1933
    new-instance p4, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;

    invoke-direct {p4}, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;-><init>()V

    .line 1934
    invoke-virtual {p4, p2}, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1935
    invoke-virtual {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->getColrResponse_1_3(IILvendor/qti/hardware/radio/ims/V1_3/ColrInfo;)V

    return-void

    .line 1917
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1919
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1920
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1921
    new-instance p4, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;

    invoke-direct {p4}, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;-><init>()V

    .line 1922
    invoke-virtual {p4, p2}, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1923
    invoke-virtual {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->suppServiceStatusResponse_1_3(IILvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;)V

    return-void

    .line 1905
    :pswitch_c
    const-string p1, "vendor.qti.hardware.radio.ims@1.2::IImsRadioResponse"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1907
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1908
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1909
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p4

    .line 1910
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1911
    invoke-virtual {p0, p1, p3, p4, p2}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->sendImsSmsResponse(IIII)V

    return-void

    .line 1893
    :pswitch_d
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1895
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1896
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1897
    new-instance p4, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;

    invoke-direct {p4}, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;-><init>()V

    .line 1898
    invoke-virtual {p4, p2}, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1899
    invoke-virtual {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->querySsacStatusResponse(IILvendor/qti/hardware/radio/ims/V1_0/SsacInfo;)V

    return-void

    .line 1881
    :pswitch_e
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1883
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1884
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1885
    new-instance p4, Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;

    invoke-direct {p4}, Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;-><init>()V

    .line 1886
    invoke-virtual {p4, p2}, Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1887
    invoke-virtual {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->queryVopsStatusResponse(IILvendor/qti/hardware/radio/ims/V1_0/VopsInfo;)V

    return-void

    .line 1870
    :pswitch_f
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1872
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1873
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1874
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1875
    invoke-virtual {p0, p1, p3, p2}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->queryVoltePrefResponse(III)V

    return-void

    .line 1860
    :pswitch_10
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1862
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1863
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1864
    invoke-virtual {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->updateVoltePrefResponse(II)V

    return-void

    .line 1850
    :pswitch_11
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1852
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1853
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1854
    invoke-virtual {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->cancelModifyCallResponse(II)V

    return-void

    .line 1840
    :pswitch_12
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1842
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1843
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1844
    invoke-virtual {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->sendRttMessageResponse(II)V

    return-void

    .line 1828
    :pswitch_13
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1830
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1831
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1832
    new-instance p4, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;

    invoke-direct {p4}, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;-><init>()V

    .line 1833
    invoke-virtual {p4, p2}, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1834
    invoke-virtual {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->getImsSubConfigResponse(IILvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;)V

    return-void

    .line 1818
    :pswitch_14
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1820
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1821
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1822
    invoke-virtual {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->sendGeolocationInfoResponse(II)V

    return-void

    .line 1808
    :pswitch_15
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1810
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1811
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1812
    invoke-virtual {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->deflectCallResponse(II)V

    return-void

    .line 1798
    :pswitch_16
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1800
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1801
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1802
    invoke-virtual {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->addParticipantResponse(II)V

    return-void

    .line 1787
    :pswitch_17
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1789
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1790
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1791
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v0

    .line 1792
    invoke-virtual {p0, p1, p3, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->getRtpErrorStatisticsResponse(IIJ)V

    return-void

    .line 1776
    :pswitch_18
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1778
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1779
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1780
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v0

    .line 1781
    invoke-virtual {p0, p1, p3, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->getRtpStatisticsResponse(IIJ)V

    return-void

    .line 1765
    :pswitch_19
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1767
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1768
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1769
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1770
    invoke-virtual {p0, p1, p3, p2}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->setSuppServiceNotificationResponse(III)V

    return-void

    .line 1755
    :pswitch_1a
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1757
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1758
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1759
    invoke-virtual {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->explicitCallTransferResponse(II)V

    return-void

    .line 1741
    :pswitch_1b
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1743
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1744
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1745
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1746
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 1747
    new-instance v5, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {v5}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    .line 1748
    invoke-virtual {v5, p2}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object v0, p0

    .line 1749
    invoke-virtual/range {v0 .. v5}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->getCallWaitingResponse(IIIILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    return-void

    :pswitch_1c
    move-object v0, p0

    .line 1728
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1730
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p0

    .line 1731
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1732
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p3

    .line 1733
    new-instance p4, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {p4}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    .line 1734
    invoke-virtual {p4, p2}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1735
    invoke-virtual {v0, p0, p1, p3, p4}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->queryCallForwardStatusResponse(IILjava/util/ArrayList;Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    return-void

    :pswitch_1d
    move-object v0, p0

    .line 1718
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1720
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p0

    .line 1721
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1722
    invoke-virtual {v0, p0, p1}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->modifyCallConfirmResponse(II)V

    return-void

    :pswitch_1e
    move-object v0, p0

    .line 1708
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1710
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p0

    .line 1711
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1712
    invoke-virtual {v0, p0, p1}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->modifyCallInitiateResponse(II)V

    return-void

    :pswitch_1f
    move-object v0, p0

    .line 1698
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1700
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p0

    .line 1701
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1702
    invoke-virtual {v0, p0, p1}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->setUiTTYModeResponse(II)V

    return-void

    :pswitch_20
    move-object v0, p0

    .line 1688
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1690
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p0

    .line 1691
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1692
    invoke-virtual {v0, p0, p1}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->stopDtmfResponse(II)V

    return-void

    :pswitch_21
    move-object v0, p0

    .line 1678
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1680
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p0

    .line 1681
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1682
    invoke-virtual {v0, p0, p1}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->startDtmfResponse(II)V

    return-void

    :pswitch_22
    move-object v0, p0

    .line 1668
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1670
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p0

    .line 1671
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1672
    invoke-virtual {v0, p0, p1}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->sendDtmfResponse(II)V

    return-void

    :pswitch_23
    move-object v0, p0

    .line 1658
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1660
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p0

    .line 1661
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1662
    invoke-virtual {v0, p0, p1}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->exitEmergencyCallbackModeResponse(II)V

    return-void

    :pswitch_24
    move-object v0, p0

    .line 1646
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1648
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p0

    .line 1649
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1650
    new-instance p3, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;

    invoke-direct {p3}, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;-><init>()V

    .line 1651
    invoke-virtual {p3, p2}, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1652
    invoke-virtual {v0, p0, p1, p3}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->getColrResponse(IILvendor/qti/hardware/radio/ims/V1_0/ColrInfo;)V

    return-void

    :pswitch_25
    move-object v0, p0

    .line 1636
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1638
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p0

    .line 1639
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1640
    invoke-virtual {v0, p0, p1}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->setClirResponse(II)V

    return-void

    :pswitch_26
    move-object v0, p0

    .line 1623
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1625
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p0

    .line 1626
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1627
    new-instance p3, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;

    invoke-direct {p3}, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;-><init>()V

    .line 1628
    invoke-virtual {p3, p2}, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1629
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 1630
    invoke-virtual {v0, p0, p1, p3, p2}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->getClirResponse(IILvendor/qti/hardware/radio/ims/V1_0/ClirInfo;Z)V

    return-void

    :pswitch_27
    move-object v0, p0

    .line 1611
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1613
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p0

    .line 1614
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1615
    new-instance p3, Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;

    invoke-direct {p3}, Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;-><init>()V

    .line 1616
    invoke-virtual {p3, p2}, Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1617
    invoke-virtual {v0, p0, p1, p3}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->getClipResponse(IILvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;)V

    return-void

    :pswitch_28
    move-object v0, p0

    .line 1599
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1601
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p0

    .line 1602
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1603
    new-instance p3, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {p3}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    .line 1604
    invoke-virtual {p3, p2}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1605
    invoke-virtual {v0, p0, p1, p3}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->conferenceResponse(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    return-void

    :pswitch_29
    move-object v0, p0

    .line 1587
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1589
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p0

    .line 1590
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1591
    new-instance p3, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;

    invoke-direct {p3}, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;-><init>()V

    .line 1592
    invoke-virtual {p3, p2}, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1593
    invoke-virtual {v0, p0, p1, p3}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->suppServiceStatusResponse(IILvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;)V

    return-void

    :pswitch_2a
    move-object v0, p0

    .line 1575
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1577
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p0

    .line 1578
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1579
    new-instance p3, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;

    invoke-direct {p3}, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;-><init>()V

    .line 1580
    invoke-virtual {p3, p2}, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1581
    invoke-virtual {v0, p0, p1, p3}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->getRegistrationResponse(IILvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;)V

    return-void

    :pswitch_2b
    move-object v0, p0

    .line 1563
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1565
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p0

    .line 1566
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1567
    new-instance p3, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    invoke-direct {p3}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;-><init>()V

    .line 1568
    invoke-virtual {p3, p2}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1569
    invoke-virtual {v0, p0, p1, p3}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->getConfigResponse(IILvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)V

    return-void

    :pswitch_2c
    move-object v0, p0

    .line 1551
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1553
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p0

    .line 1554
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1555
    new-instance p3, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    invoke-direct {p3}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;-><init>()V

    .line 1556
    invoke-virtual {p3, p2}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1557
    invoke-virtual {v0, p0, p1, p3}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->setConfigResponse(IILvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)V

    return-void

    :pswitch_2d
    move-object v0, p0

    .line 1539
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1541
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p0

    .line 1542
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1543
    new-instance p3, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {p3}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    .line 1544
    invoke-virtual {p3, p2}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1545
    invoke-virtual {v0, p0, p1, p3}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->resumeResponse(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    return-void

    :pswitch_2e
    move-object v0, p0

    .line 1527
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1529
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p0

    .line 1530
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1531
    new-instance p3, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {p3}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    .line 1532
    invoke-virtual {p3, p2}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1533
    invoke-virtual {v0, p0, p1, p3}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->holdResponse(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    return-void

    :pswitch_2f
    move-object v0, p0

    .line 1517
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1519
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p0

    .line 1520
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1521
    invoke-virtual {v0, p0, p1}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->setServiceStatusResponse(II)V

    return-void

    :pswitch_30
    move-object v0, p0

    .line 1506
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1508
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p0

    .line 1509
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1510
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 1511
    invoke-virtual {v0, p0, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->queryServiceStatusResponse(IILjava/util/ArrayList;)V

    return-void

    :pswitch_31
    move-object v0, p0

    .line 1496
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1498
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p0

    .line 1499
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1500
    invoke-virtual {v0, p0, p1}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->requestRegistrationChangeResponse(II)V

    return-void

    :pswitch_32
    move-object v0, p0

    .line 1486
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1488
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p0

    .line 1489
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1490
    invoke-virtual {v0, p0, p1}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->hangupResponse(II)V

    return-void

    :pswitch_33
    move-object v0, p0

    .line 1476
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1478
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p0

    .line 1479
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1480
    invoke-virtual {v0, p0, p1}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->answerResponse(II)V

    return-void

    :pswitch_34
    move-object v0, p0

    .line 1466
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1468
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p0

    .line 1469
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1470
    invoke-virtual {v0, p0, p1}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->dialResponse(II)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 1445
    const-string v0, "vendor.qti.hardware.radio.ims@1.7::IImsRadioResponse"

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

    .line 1452
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

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
