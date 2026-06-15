.class public final Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;
.super Ljava/lang/Object;
.source "VosActionInfo.java"


# instance fields
.field public hasVosMoveInfo:Z

.field public hasVosTouchInfo:Z

.field public vosMoveInfo:Lvendor/qti/hardware/radio/ims/V1_9/VosMoveInfo;

.field public vosTouchInfo:Lvendor/qti/hardware/radio/ims/V1_9/VosTouchInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;->hasVosMoveInfo:Z

    .line 6
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_9/VosMoveInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_9/VosMoveInfo;-><init>()V

    iput-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;->vosMoveInfo:Lvendor/qti/hardware/radio/ims/V1_9/VosMoveInfo;

    .line 7
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;->hasVosTouchInfo:Z

    .line 8
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_9/VosTouchInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_9/VosTouchInfo;-><init>()V

    iput-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;->vosTouchInfo:Lvendor/qti/hardware/radio/ims/V1_9/VosTouchInfo;

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
            "Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;",
            ">;"
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 69
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 72
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x24

    int-to-long v5, v3

    .line 74
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 73
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 77
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 79
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;-><init>()V

    mul-int/lit8 v5, v1, 0x24

    int-to-long v5, v5

    .line 80
    invoke-virtual {v3, v4, p0, v5, v6}, Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 81
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
            "Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;",
            ">;)V"
        }
    .end annotation

    .line 104
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 106
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 107
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 108
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 109
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x24

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v4, v1, :cond_0

    .line 111
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;

    mul-int/lit8 v5, v4, 0x24

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    .line 113
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 116
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

    .line 18
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;

    if-eq v2, v3, :cond_2

    return v1

    .line 21
    :cond_2
    check-cast p1, Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;

    .line 22
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;->hasVosMoveInfo:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;->hasVosMoveInfo:Z

    if-eq v2, v3, :cond_3

    return v1

    .line 25
    :cond_3
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;->vosMoveInfo:Lvendor/qti/hardware/radio/ims/V1_9/VosMoveInfo;

    iget-object v3, p1, Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;->vosMoveInfo:Lvendor/qti/hardware/radio/ims/V1_9/VosMoveInfo;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 28
    :cond_4
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;->hasVosTouchInfo:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;->hasVosTouchInfo:Z

    if-eq v2, v3, :cond_5

    return v1

    .line 31
    :cond_5
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;->vosTouchInfo:Lvendor/qti/hardware/radio/ims/V1_9/VosTouchInfo;

    iget-object p1, p1, Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;->vosTouchInfo:Lvendor/qti/hardware/radio/ims/V1_9/VosTouchInfo;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 39
    iget-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;->hasVosMoveInfo:Z

    .line 40
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;->vosMoveInfo:Lvendor/qti/hardware/radio/ims/V1_9/VosMoveInfo;

    .line 41
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;->hasVosTouchInfo:Z

    .line 42
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;->vosTouchInfo:Lvendor/qti/hardware/radio/ims/V1_9/VosTouchInfo;

    .line 43
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 39
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 3

    .line 90
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;->hasVosMoveInfo:Z

    .line 91
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;->vosMoveInfo:Lvendor/qti/hardware/radio/ims/V1_9/VosMoveInfo;

    const-wide/16 v1, 0x4

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/VosMoveInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v0, 0x14

    add-long/2addr v0, p3

    .line 92
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;->hasVosTouchInfo:Z

    .line 93
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;->vosTouchInfo:Lvendor/qti/hardware/radio/ims/V1_9/VosTouchInfo;

    const-wide/16 v0, 0x18

    add-long/2addr p3, v0

    invoke-virtual {p0, p1, p2, p3, p4}, Lvendor/qti/hardware/radio/ims/V1_9/VosTouchInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    const-wide/16 v0, 0x24

    .line 63
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 64
    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{.hasVosMoveInfo = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;->hasVosMoveInfo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, ", .vosMoveInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;->vosMoveInfo:Lvendor/qti/hardware/radio/ims/V1_9/VosMoveInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    const-string v1, ", .hasVosTouchInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;->hasVosTouchInfo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, ", .vosTouchInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;->vosTouchInfo:Lvendor/qti/hardware/radio/ims/V1_9/VosTouchInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3

    .line 121
    iget-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;->hasVosMoveInfo:Z

    invoke-virtual {p1, p2, p3, v0}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 122
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;->vosMoveInfo:Lvendor/qti/hardware/radio/ims/V1_9/VosMoveInfo;

    const-wide/16 v1, 0x4

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/VosMoveInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    const-wide/16 v0, 0x14

    add-long/2addr v0, p2

    .line 123
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;->hasVosTouchInfo:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 124
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;->vosTouchInfo:Lvendor/qti/hardware/radio/ims/V1_9/VosTouchInfo;

    const-wide/16 v0, 0x18

    add-long/2addr p2, v0

    invoke-virtual {p0, p1, p2, p3}, Lvendor/qti/hardware/radio/ims/V1_9/VosTouchInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 97
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x24

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 98
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 99
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
