.class public final Lvendor/qti/hardware/radio/ims/V1_10/PreAlertingCallInfo;
.super Ljava/lang/Object;
.source "PreAlertingCallInfo.java"


# instance fields
.field public callComposerInfo:Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;

.field public callId:I

.field public ecnamInfo:Lvendor/qti/hardware/radio/ims/V1_10/EcnamInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_10/PreAlertingCallInfo;->callId:I

    .line 6
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;-><init>()V

    iput-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_10/PreAlertingCallInfo;->callComposerInfo:Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;

    .line 7
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_10/EcnamInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_10/EcnamInfo;-><init>()V

    iput-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_10/PreAlertingCallInfo;->ecnamInfo:Lvendor/qti/hardware/radio/ims/V1_10/EcnamInfo;

    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_10/PreAlertingCallInfo;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 62
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 65
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit16 v3, v2, 0x88

    int-to-long v5, v3

    .line 67
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 66
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 70
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 72
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_10/PreAlertingCallInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_10/PreAlertingCallInfo;-><init>()V

    mul-int/lit16 v5, v1, 0x88

    int-to-long v5, v5

    .line 73
    invoke-virtual {v3, v4, p0, v5, v6}, Lvendor/qti/hardware/radio/ims/V1_10/PreAlertingCallInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 74
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_10/PreAlertingCallInfo;",
            ">;)V"
        }
    .end annotation

    .line 96
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 98
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 99
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 100
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 101
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit16 v3, v1, 0x88

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v4, v1, :cond_0

    .line 103
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/V1_10/PreAlertingCallInfo;

    mul-int/lit16 v5, v4, 0x88

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lvendor/qti/hardware/radio/ims/V1_10/PreAlertingCallInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    .line 105
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 108
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 17
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/qti/hardware/radio/ims/V1_10/PreAlertingCallInfo;

    if-eq v2, v3, :cond_2

    return v1

    .line 20
    :cond_2
    check-cast p1, Lvendor/qti/hardware/radio/ims/V1_10/PreAlertingCallInfo;

    .line 21
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_10/PreAlertingCallInfo;->callId:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_10/PreAlertingCallInfo;->callId:I

    if-eq v2, v3, :cond_3

    return v1

    .line 24
    :cond_3
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_10/PreAlertingCallInfo;->callComposerInfo:Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;

    iget-object v3, p1, Lvendor/qti/hardware/radio/ims/V1_10/PreAlertingCallInfo;->callComposerInfo:Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 27
    :cond_4
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_10/PreAlertingCallInfo;->ecnamInfo:Lvendor/qti/hardware/radio/ims/V1_10/EcnamInfo;

    iget-object p1, p1, Lvendor/qti/hardware/radio/ims/V1_10/PreAlertingCallInfo;->ecnamInfo:Lvendor/qti/hardware/radio/ims/V1_10/EcnamInfo;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 35
    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_10/PreAlertingCallInfo;->callId:I

    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_10/PreAlertingCallInfo;->callComposerInfo:Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;

    .line 37
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_10/PreAlertingCallInfo;->ecnamInfo:Lvendor/qti/hardware/radio/ims/V1_10/EcnamInfo;

    .line 38
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 35
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 3

    .line 83
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_10/PreAlertingCallInfo;->callId:I

    .line 84
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_10/PreAlertingCallInfo;->callComposerInfo:Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;

    const-wide/16 v1, 0x8

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 85
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_10/PreAlertingCallInfo;->ecnamInfo:Lvendor/qti/hardware/radio/ims/V1_10/EcnamInfo;

    const-wide/16 v0, 0x48

    add-long/2addr p3, v0

    invoke-virtual {p0, p1, p2, p3, p4}, Lvendor/qti/hardware/radio/ims/V1_10/EcnamInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    const-wide/16 v0, 0x88

    .line 56
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 57
    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_10/PreAlertingCallInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{.callId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_10/PreAlertingCallInfo;->callId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    const-string v1, ", .callComposerInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_10/PreAlertingCallInfo;->callComposerInfo:Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    const-string v1, ", .ecnamInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_10/PreAlertingCallInfo;->ecnamInfo:Lvendor/qti/hardware/radio/ims/V1_10/EcnamInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3

    .line 113
    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_10/PreAlertingCallInfo;->callId:I

    invoke-virtual {p1, p2, p3, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 114
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_10/PreAlertingCallInfo;->callComposerInfo:Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;

    const-wide/16 v1, 0x8

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 115
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_10/PreAlertingCallInfo;->ecnamInfo:Lvendor/qti/hardware/radio/ims/V1_10/EcnamInfo;

    const-wide/16 v0, 0x48

    add-long/2addr p2, v0

    invoke-virtual {p0, p1, p2, p3}, Lvendor/qti/hardware/radio/ims/V1_10/EcnamInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 89
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x88

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 90
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_10/PreAlertingCallInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 91
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
