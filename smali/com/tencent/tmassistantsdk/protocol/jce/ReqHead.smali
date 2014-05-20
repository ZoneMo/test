.class public final Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_terminal:Lcom/tencent/tmassistantsdk/protocol/jce/Terminal;


# instance fields
.field public assistantAPILevel:I

.field public assistantVersionCode:I

.field public cmdId:I

.field public encryptWithPack:B

.field public phoneGuid:Ljava/lang/String;

.field public qua:Ljava/lang/String;

.field public requestId:I

.field public terminal:Lcom/tencent/tmassistantsdk/protocol/jce/Terminal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    iput v1, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->requestId:I

    .line 23
    iput v1, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->cmdId:I

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->phoneGuid:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->qua:Ljava/lang/String;

    .line 29
    iput-byte v1, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->encryptWithPack:B

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->terminal:Lcom/tencent/tmassistantsdk/protocol/jce/Terminal;

    .line 33
    iput v1, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->assistantAPILevel:I

    .line 35
    iput v1, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->assistantVersionCode:I

    .line 119
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;BLcom/tencent/tmassistantsdk/protocol/jce/Terminal;II)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    iput v1, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->requestId:I

    .line 23
    iput v1, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->cmdId:I

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->phoneGuid:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->qua:Ljava/lang/String;

    .line 29
    iput-byte v1, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->encryptWithPack:B

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->terminal:Lcom/tencent/tmassistantsdk/protocol/jce/Terminal;

    .line 33
    iput v1, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->assistantAPILevel:I

    .line 35
    iput v1, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->assistantVersionCode:I

    .line 123
    iput p1, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->requestId:I

    .line 124
    iput p2, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->cmdId:I

    .line 125
    iput-object p3, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->phoneGuid:Ljava/lang/String;

    .line 126
    iput-object p4, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->qua:Ljava/lang/String;

    .line 127
    iput-byte p5, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->encryptWithPack:B

    .line 128
    iput-object p6, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->terminal:Lcom/tencent/tmassistantsdk/protocol/jce/Terminal;

    .line 129
    iput p7, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->assistantAPILevel:I

    .line 130
    iput p8, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->assistantVersionCode:I

    .line 131
    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string v0, "jce.ReqHead"

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 166
    const/4 v0, 0x0

    .line 169
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 175
    :cond_0
    return-object v0

    .line 173
    :catch_0
    move-exception v1

    sget-boolean v1, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 213
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 214
    iget v1, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->requestId:I

    const-string v2, "requestId"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 215
    iget v1, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->cmdId:I

    const-string v2, "cmdId"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 216
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->phoneGuid:Ljava/lang/String;

    const-string v2, "phoneGuid"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 217
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->qua:Ljava/lang/String;

    const-string v2, "qua"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 218
    iget-byte v1, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->encryptWithPack:B

    const-string v2, "encryptWithPack"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(BLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 219
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->terminal:Lcom/tencent/tmassistantsdk/protocol/jce/Terminal;

    const-string v2, "terminal"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 220
    iget v1, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->assistantAPILevel:I

    const-string v2, "assistantAPILevel"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 221
    iget v1, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->assistantVersionCode:I

    const-string v2, "assistantVersionCode"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 222
    return-void
.end method

.method public final displaySimple(Ljava/lang/StringBuilder;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 226
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 227
    iget v1, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->requestId:I

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(IZ)Lcom/qq/taf/jce/JceDisplayer;

    .line 228
    iget v1, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->cmdId:I

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(IZ)Lcom/qq/taf/jce/JceDisplayer;

    .line 229
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->phoneGuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Ljava/lang/String;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 230
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->qua:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Ljava/lang/String;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 231
    iget-byte v1, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->encryptWithPack:B

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(BZ)Lcom/qq/taf/jce/JceDisplayer;

    .line 232
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->terminal:Lcom/tencent/tmassistantsdk/protocol/jce/Terminal;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 233
    iget v1, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->assistantAPILevel:I

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(IZ)Lcom/qq/taf/jce/JceDisplayer;

    .line 234
    iget v1, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->assistantVersionCode:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(IZ)Lcom/qq/taf/jce/JceDisplayer;

    .line 235
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 135
    if-nez p1, :cond_1

    .line 141
    :cond_0
    :goto_0
    return v0

    .line 140
    :cond_1
    check-cast p1, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;

    .line 141
    iget v1, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->requestId:I

    iget v2, p1, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->requestId:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->cmdId:I

    iget v2, p1, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->cmdId:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->phoneGuid:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->phoneGuid:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->qua:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->qua:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-byte v1, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->encryptWithPack:B

    iget-byte v2, p1, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->encryptWithPack:B

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(BB)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->terminal:Lcom/tencent/tmassistantsdk/protocol/jce/Terminal;

    iget-object v2, p1, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->terminal:Lcom/tencent/tmassistantsdk/protocol/jce/Terminal;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->assistantAPILevel:I

    iget v2, p1, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->assistantAPILevel:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->assistantVersionCode:I

    iget v2, p1, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->assistantVersionCode:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final fullClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    const-string v0, "com.tencent.tmassistantsdk.protocol.jce.ReqHead"

    return-object v0
.end method

.method public final getAssistantAPILevel()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->assistantAPILevel:I

    return v0
.end method

.method public final getAssistantVersionCode()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->assistantVersionCode:I

    return v0
.end method

.method public final getCmdId()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->cmdId:I

    return v0
.end method

.method public final getEncryptWithPack()B
    .locals 1

    .prologue
    .line 79
    iget-byte v0, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->encryptWithPack:B

    return v0
.end method

.method public final getPhoneGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->phoneGuid:Ljava/lang/String;

    return-object v0
.end method

.method public final getQua()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->qua:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequestId()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->requestId:I

    return v0
.end method

.method public final getTerminal()Lcom/tencent/tmassistantsdk/protocol/jce/Terminal;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->terminal:Lcom/tencent/tmassistantsdk/protocol/jce/Terminal;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 156
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    return v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 197
    iget v0, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->requestId:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->requestId:I

    .line 198
    iget v0, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->cmdId:I

    invoke-virtual {p1, v0, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->cmdId:I

    .line 199
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->phoneGuid:Ljava/lang/String;

    .line 200
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->qua:Ljava/lang/String;

    .line 201
    iget-byte v0, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->encryptWithPack:B

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->encryptWithPack:B

    .line 202
    sget-object v0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->cache_terminal:Lcom/tencent/tmassistantsdk/protocol/jce/Terminal;

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Lcom/tencent/tmassistantsdk/protocol/jce/Terminal;

    invoke-direct {v0}, Lcom/tencent/tmassistantsdk/protocol/jce/Terminal;-><init>()V

    sput-object v0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->cache_terminal:Lcom/tencent/tmassistantsdk/protocol/jce/Terminal;

    .line 206
    :cond_0
    sget-object v0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->cache_terminal:Lcom/tencent/tmassistantsdk/protocol/jce/Terminal;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmassistantsdk/protocol/jce/Terminal;

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->terminal:Lcom/tencent/tmassistantsdk/protocol/jce/Terminal;

    .line 207
    iget v0, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->assistantAPILevel:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->assistantAPILevel:I

    .line 208
    iget v0, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->assistantVersionCode:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->assistantVersionCode:I

    .line 209
    return-void
.end method

.method public final setAssistantAPILevel(I)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput p1, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->assistantAPILevel:I

    .line 105
    return-void
.end method

.method public final setAssistantVersionCode(I)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput p1, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->assistantVersionCode:I

    .line 115
    return-void
.end method

.method public final setCmdId(I)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput p1, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->cmdId:I

    .line 55
    return-void
.end method

.method public final setEncryptWithPack(B)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-byte p1, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->encryptWithPack:B

    .line 85
    return-void
.end method

.method public final setPhoneGuid(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->phoneGuid:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public final setQua(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->qua:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public final setRequestId(I)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput p1, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->requestId:I

    .line 45
    return-void
.end method

.method public final setTerminal(Lcom/tencent/tmassistantsdk/protocol/jce/Terminal;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->terminal:Lcom/tencent/tmassistantsdk/protocol/jce/Terminal;

    .line 95
    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2
    .parameter

    .prologue
    .line 180
    iget v0, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->requestId:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 181
    iget v0, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->cmdId:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 182
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->phoneGuid:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 183
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->qua:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 184
    iget-byte v0, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->encryptWithPack:B

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    .line 185
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->terminal:Lcom/tencent/tmassistantsdk/protocol/jce/Terminal;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->terminal:Lcom/tencent/tmassistantsdk/protocol/jce/Terminal;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 189
    :cond_0
    iget v0, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->assistantAPILevel:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 190
    iget v0, p0, Lcom/tencent/tmassistantsdk/protocol/jce/ReqHead;->assistantVersionCode:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 191
    return-void
.end method
