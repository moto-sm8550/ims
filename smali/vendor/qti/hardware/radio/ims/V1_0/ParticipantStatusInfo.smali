.class public final Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;
.super Ljava/lang/Object;
.source "ParticipantStatusInfo.java"


# instance fields
.field public callId:I

.field public hasIsEct:Z

.field public isEct:Z

.field public operation:I

.field public participantUri:Ljava/lang/String;

.field public sipStatus:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->callId:I

    .line 9
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->operation:I

    .line 13
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->sipStatus:I

    .line 17
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->participantUri:Ljava/lang/String;

    .line 21
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->hasIsEct:Z

    .line 25
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->isEct:Z

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
            "Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;",
            ">;"
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 98
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 101
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x28

    int-to-long v5, v3

    .line 103
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 102
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 106
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 108
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;-><init>()V

    mul-int/lit8 v5, v1, 0x28

    int-to-long v5, v5

    .line 109
    invoke-virtual {v3, v4, p0, v5, v6}, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 110
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
            "Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;",
            ">;)V"
        }
    .end annotation

    .line 141
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 143
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 144
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 145
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 146
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x28

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v4, v1, :cond_0

    .line 148
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;

    mul-int/lit8 v5, v4, 0x28

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    .line 150
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 153
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

    .line 35
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;

    if-eq v2, v3, :cond_2

    return v1

    .line 38
    :cond_2
    check-cast p1, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;

    .line 39
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->callId:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->callId:I

    if-eq v2, v3, :cond_3

    return v1

    .line 42
    :cond_3
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->operation:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->operation:I

    if-eq v2, v3, :cond_4

    return v1

    .line 45
    :cond_4
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->sipStatus:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->sipStatus:I

    if-eq v2, v3, :cond_5

    return v1

    .line 48
    :cond_5
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->participantUri:Ljava/lang/String;

    iget-object v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->participantUri:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 51
    :cond_6
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->hasIsEct:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->hasIsEct:Z

    if-eq v2, v3, :cond_7

    return v1

    .line 54
    :cond_7
    iget-boolean p0, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->isEct:Z

    iget-boolean p1, p1, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->isEct:Z

    if-eq p0, p1, :cond_8

    return v1

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 7

    .line 62
    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->callId:I

    .line 63
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->operation:I

    .line 64
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->sipStatus:I

    .line 65
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->participantUri:Ljava/lang/String;

    .line 66
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->hasIsEct:Z

    .line 67
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-boolean p0, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->isEct:Z

    .line 68
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    .line 62
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 10

    .line 119
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->callId:I

    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    .line 120
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->operation:I

    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    .line 121
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->sipStatus:I

    const-wide/16 v0, 0x10

    add-long v7, p3, v0

    .line 122
    invoke-virtual {p2, v7, v8}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->participantUri:Ljava/lang/String;

    .line 125
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v3, v0

    .line 126
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    const/4 v9, 0x0

    move-object v2, p1

    .line 124
    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    const-wide/16 v0, 0x20

    add-long/2addr v0, p3

    .line 129
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->hasIsEct:Z

    const-wide/16 v0, 0x21

    add-long/2addr p3, v0

    .line 130
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->isEct:Z

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    const-wide/16 v0, 0x28

    .line 92
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 93
    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{.callId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->callId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    const-string v1, ", .operation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->operation:I

    invoke-static {v1}, Lvendor/qti/hardware/radio/ims/V1_0/ConfParticipantOperation;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    const-string v1, ", .sipStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->sipStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    const-string v1, ", .participantUri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->participantUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const-string v1, ", .hasIsEct = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->hasIsEct:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 85
    const-string v1, ", .isEct = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-boolean p0, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->isEct:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 87
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3

    .line 158
    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->callId:I

    invoke-virtual {p1, p2, p3, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    .line 159
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->operation:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    .line 160
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->sipStatus:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    .line 161
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->participantUri:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    const-wide/16 v0, 0x20

    add-long/2addr v0, p2

    .line 162
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->hasIsEct:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x21

    add-long/2addr p2, v0

    .line 163
    iget-boolean p0, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->isEct:Z

    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putBool(JZ)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 134
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 135
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 136
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
