.class final Lcom/tencent/mm/aj/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field cBx:Lcom/tencent/mm/modelvoice/i;

.field cCX:Landroid/media/AudioRecord;

.field cDF:Lcom/tencent/qqpinyin/voicerecoapi/c;

.field cDG:I

.field cDH:Z

.field final synthetic cDI:Lcom/tencent/mm/aj/f;

.field cys:Lcom/tencent/qqpinyin/voicerecoapi/a;

.field cyt:Ljava/io/FileOutputStream;

.field handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/tencent/mm/aj/f;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 182
    iput-object p1, p0, Lcom/tencent/mm/aj/g;->cDI:Lcom/tencent/mm/aj/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object v0, p0, Lcom/tencent/mm/aj/g;->cCX:Landroid/media/AudioRecord;

    .line 185
    iput-object v0, p0, Lcom/tencent/mm/aj/g;->cDF:Lcom/tencent/qqpinyin/voicerecoapi/c;

    .line 186
    iput-object v0, p0, Lcom/tencent/mm/aj/g;->cys:Lcom/tencent/qqpinyin/voicerecoapi/a;

    .line 187
    iput-object v0, p0, Lcom/tencent/mm/aj/g;->cBx:Lcom/tencent/mm/modelvoice/i;

    .line 188
    iput-object v0, p0, Lcom/tencent/mm/aj/g;->cyt:Ljava/io/FileOutputStream;

    .line 190
    iput v1, p0, Lcom/tencent/mm/aj/g;->cDG:I

    .line 191
    iput-boolean v1, p0, Lcom/tencent/mm/aj/g;->cDH:Z

    .line 193
    new-instance v0, Lcom/tencent/mm/aj/h;

    invoke-direct {v0, p0}, Lcom/tencent/mm/aj/h;-><init>(Lcom/tencent/mm/aj/g;)V

    iput-object v0, p0, Lcom/tencent/mm/aj/g;->handler:Landroid/os/Handler;

    return-void
.end method

.method private reset()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 236
    iget-object v0, p0, Lcom/tencent/mm/aj/g;->cCX:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/aj/g;->cCX:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-ne v2, v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/tencent/mm/aj/g;->cCX:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 238
    iget-object v0, p0, Lcom/tencent/mm/aj/g;->cCX:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 239
    const-string v0, "MicroMsg.SceneVoiceAddr"

    const-string v1, "recordrInstance.release() [%d]"

    new-array v2, v2, [Ljava/lang/Object;

    sget v3, Lcom/tencent/mm/compatible/audio/o;->count:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/tencent/mm/compatible/audio/o;->count:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    :cond_0
    iput-object v5, p0, Lcom/tencent/mm/aj/g;->cCX:Landroid/media/AudioRecord;

    .line 242
    iget-object v0, p0, Lcom/tencent/mm/aj/g;->cDF:Lcom/tencent/qqpinyin/voicerecoapi/c;

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/tencent/mm/aj/g;->cDF:Lcom/tencent/qqpinyin/voicerecoapi/c;

    invoke-virtual {v0}, Lcom/tencent/qqpinyin/voicerecoapi/c;->stop()I

    .line 245
    :cond_1
    iput-object v5, p0, Lcom/tencent/mm/aj/g;->cDF:Lcom/tencent/qqpinyin/voicerecoapi/c;

    .line 247
    iget-object v0, p0, Lcom/tencent/mm/aj/g;->cys:Lcom/tencent/qqpinyin/voicerecoapi/a;

    if-eqz v0, :cond_2

    .line 248
    iget-object v0, p0, Lcom/tencent/mm/aj/g;->cys:Lcom/tencent/qqpinyin/voicerecoapi/a;

    invoke-virtual {v0}, Lcom/tencent/qqpinyin/voicerecoapi/a;->aPL()I

    .line 249
    iput-object v5, p0, Lcom/tencent/mm/aj/g;->cys:Lcom/tencent/qqpinyin/voicerecoapi/a;

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/aj/g;->cBx:Lcom/tencent/mm/modelvoice/i;

    if-eqz v0, :cond_3

    .line 252
    iget-object v0, p0, Lcom/tencent/mm/aj/g;->cBx:Lcom/tencent/mm/modelvoice/i;

    invoke-static {}, Lcom/tencent/mm/modelvoice/i;->release()V

    .line 253
    iput-object v5, p0, Lcom/tencent/mm/aj/g;->cBx:Lcom/tencent/mm/modelvoice/i;

    .line 255
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/aj/g;->cyt:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_4

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/aj/g;->cyt:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :cond_4
    :goto_0
    iput-object v5, p0, Lcom/tencent/mm/aj/g;->cyt:Ljava/io/FileOutputStream;

    .line 263
    iget-object v0, p0, Lcom/tencent/mm/aj/g;->cDI:Lcom/tencent/mm/aj/f;

    invoke-static {v0}, Lcom/tencent/mm/aj/f;->e(Lcom/tencent/mm/aj/f;)Lcom/tencent/mm/aj/a;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 264
    iget-object v0, p0, Lcom/tencent/mm/aj/g;->cDI:Lcom/tencent/mm/aj/f;

    invoke-static {v0}, Lcom/tencent/mm/aj/f;->e(Lcom/tencent/mm/aj/f;)Lcom/tencent/mm/aj/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/aj/a;->EE()V

    .line 266
    :cond_5
    iput v6, p0, Lcom/tencent/mm/aj/g;->cDG:I

    .line 267
    iput-boolean v6, p0, Lcom/tencent/mm/aj/g;->cDH:Z

    .line 268
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final run()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v6, 0x0

    const/4 v9, 0x1

    .line 272
    const-string v0, "MicroMsg.SceneVoiceAddr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "start RecordingRunnable! file:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/aj/g;->cDI:Lcom/tencent/mm/aj/f;

    invoke-static {v2}, Lcom/tencent/mm/aj/f;->d(Lcom/tencent/mm/aj/f;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/tencent/mm/aj/g;->cDI:Lcom/tencent/mm/aj/f;

    invoke-static {v0, v6}, Lcom/tencent/mm/aj/f;->a(Lcom/tencent/mm/aj/f;I)I

    .line 274
    iget-object v0, p0, Lcom/tencent/mm/aj/g;->cDI:Lcom/tencent/mm/aj/f;

    invoke-static {v0, v6}, Lcom/tencent/mm/aj/f;->b(Lcom/tencent/mm/aj/f;I)I

    .line 276
    const/16 v0, -0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 279
    const/16 v2, 0x3e80

    .line 280
    iget-object v0, p0, Lcom/tencent/mm/aj/g;->cDI:Lcom/tencent/mm/aj/f;

    invoke-static {v0}, Lcom/tencent/mm/aj/f;->c(Lcom/tencent/mm/aj/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    const/16 v2, 0x1f40

    .line 290
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/aj/g;->cDI:Lcom/tencent/mm/aj/f;

    invoke-static {v0}, Lcom/tencent/mm/aj/f;->c(Lcom/tencent/mm/aj/f;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/tencent/mm/compatible/c/s;->ceN:Lcom/tencent/mm/compatible/c/m;

    iget v0, v0, Lcom/tencent/mm/compatible/c/m;->cec:I

    if-lez v0, :cond_2

    .line 292
    iget-object v0, p0, Lcom/tencent/mm/aj/g;->cDI:Lcom/tencent/mm/aj/f;

    sget-object v1, Lcom/tencent/mm/compatible/c/s;->ceN:Lcom/tencent/mm/compatible/c/m;

    iget v1, v1, Lcom/tencent/mm/compatible/c/m;->cec:I

    invoke-static {v0, v1}, Lcom/tencent/mm/aj/f;->c(Lcom/tencent/mm/aj/f;I)I

    .line 296
    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-static {v2, v0, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v7

    .line 297
    const-string v0, "MicroMsg.SceneVoiceAddr"

    const-string v1, "AudioRecord.getMinBufferSize(%s, %s, %s)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    if-gez v7, :cond_3

    .line 299
    iget-object v0, p0, Lcom/tencent/mm/aj/g;->cDI:Lcom/tencent/mm/aj/f;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/tencent/mm/aj/f;->b(Lcom/tencent/mm/aj/f;I)I

    .line 309
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/aj/g;->cCX:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-eq v0, v9, :cond_1

    .line 310
    iget-object v0, p0, Lcom/tencent/mm/aj/g;->cDI:Lcom/tencent/mm/aj/f;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/tencent/mm/aj/f;->b(Lcom/tencent/mm/aj/f;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :cond_1
    new-instance v0, Lcom/tencent/qqpinyin/voicerecoapi/c;

    iget-object v1, p0, Lcom/tencent/mm/aj/g;->cDI:Lcom/tencent/mm/aj/f;

    invoke-static {v1}, Lcom/tencent/mm/aj/f;->g(Lcom/tencent/mm/aj/f;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/tencent/qqpinyin/voicerecoapi/c;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/mm/aj/g;->cDF:Lcom/tencent/qqpinyin/voicerecoapi/c;

    .line 320
    iget-object v0, p0, Lcom/tencent/mm/aj/g;->cDF:Lcom/tencent/qqpinyin/voicerecoapi/c;

    invoke-virtual {v0}, Lcom/tencent/qqpinyin/voicerecoapi/c;->aPO()I

    move-result v0

    .line 321
    if-eqz v0, :cond_4

    .line 322
    iget-object v1, p0, Lcom/tencent/mm/aj/g;->cDI:Lcom/tencent/mm/aj/f;

    const/16 v2, 0xd

    invoke-static {v1, v2}, Lcom/tencent/mm/aj/f;->b(Lcom/tencent/mm/aj/f;I)I

    .line 323
    const-string v1, "MicroMsg.SceneVoiceAddr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "init VoiceDetectAPI failed :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-direct {p0}, Lcom/tencent/mm/aj/g;->reset()V

    .line 440
    :goto_2
    return-void

    .line 294
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/tencent/mm/aj/g;->cDI:Lcom/tencent/mm/aj/f;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/tencent/mm/aj/f;->c(Lcom/tencent/mm/aj/f;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 313
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/tencent/mm/aj/g;->cDI:Lcom/tencent/mm/aj/f;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/tencent/mm/aj/f;->b(Lcom/tencent/mm/aj/f;I)I

    .line 314
    const-string v0, "MicroMsg.SceneVoiceAddr"

    const-string v1, "init record failed"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-direct {p0}, Lcom/tencent/mm/aj/g;->reset()V

    goto :goto_2

    .line 301
    :cond_3
    :try_start_2
    const-string v0, "MicroMsg.SceneVoiceAddr"

    const-string v1, "new AudioRecord [%d]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget v5, Lcom/tencent/mm/compatible/audio/o;->count:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/tencent/mm/aj/g;->cDI:Lcom/tencent/mm/aj/f;

    invoke-static {v5}, Lcom/tencent/mm/aj/f;->f(Lcom/tencent/mm/aj/f;)I

    move-result v5

    mul-int/2addr v5, v7

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/tencent/mm/aj/g;->cCX:Landroid/media/AudioRecord;

    .line 305
    const-string v0, "MicroMsg.SceneVoiceAddr"

    const-string v1, "new AudioRecord(%s, %s, %s, %s, %s)"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/tencent/mm/aj/g;->cDI:Lcom/tencent/mm/aj/f;

    invoke-static {v5}, Lcom/tencent/mm/aj/f;->f(Lcom/tencent/mm/aj/f;)I

    move-result v5

    mul-int/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 327
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/aj/g;->cDI:Lcom/tencent/mm/aj/f;

    invoke-static {v0}, Lcom/tencent/mm/aj/f;->c(Lcom/tencent/mm/aj/f;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 328
    new-instance v0, Lcom/tencent/qqpinyin/voicerecoapi/a;

    invoke-direct {v0}, Lcom/tencent/qqpinyin/voicerecoapi/a;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/aj/g;->cys:Lcom/tencent/qqpinyin/voicerecoapi/a;

    .line 329
    iget-object v0, p0, Lcom/tencent/mm/aj/g;->cys:Lcom/tencent/qqpinyin/voicerecoapi/a;

    invoke-virtual {v0}, Lcom/tencent/qqpinyin/voicerecoapi/a;->aPK()I

    move-result v0

    .line 330
    if-eqz v0, :cond_6

    .line 331
    iget-object v1, p0, Lcom/tencent/mm/aj/g;->cDI:Lcom/tencent/mm/aj/f;

    const/16 v2, 0xe

    invoke-static {v1, v2}, Lcom/tencent/mm/aj/f;->b(Lcom/tencent/mm/aj/f;I)I

    .line 332
    const-string v1, "MicroMsg.SceneVoiceAddr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "speexInit failed :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-direct {p0}, Lcom/tencent/mm/aj/g;->reset()V

    goto/16 :goto_2

    .line 337
    :cond_5
    new-instance v0, Lcom/tencent/mm/modelvoice/i;

    invoke-direct {v0}, Lcom/tencent/mm/modelvoice/i;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/aj/g;->cBx:Lcom/tencent/mm/modelvoice/i;

    .line 338
    iget-object v0, p0, Lcom/tencent/mm/aj/g;->cBx:Lcom/tencent/mm/modelvoice/i;

    invoke-virtual {v0, v9}, Lcom/tencent/mm/modelvoice/i;->eB(I)Z

    .line 342
    :cond_6
    :try_start_3
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/mm/aj/g;->cDI:Lcom/tencent/mm/aj/f;

    invoke-static {v1}, Lcom/tencent/mm/aj/f;->d(Lcom/tencent/mm/aj/f;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 343
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 344
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/tencent/mm/aj/g;->cyt:Ljava/io/FileOutputStream;

    .line 345
    iget-object v0, p0, Lcom/tencent/mm/aj/g;->cDI:Lcom/tencent/mm/aj/f;

    invoke-static {v0}, Lcom/tencent/mm/aj/f;->c(Lcom/tencent/mm/aj/f;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 346
    iget-object v0, p0, Lcom/tencent/mm/aj/g;->cyt:Ljava/io/FileOutputStream;

    const-string v1, "#!AMR\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 347
    iget-object v0, p0, Lcom/tencent/mm/aj/g;->cyt:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 358
    :cond_7
    :try_start_4
    iget-object v0, p0, Lcom/tencent/mm/aj/g;->cCX:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 361
    mul-int/lit8 v0, v2, 0x78

    mul-int/lit8 v0, v0, 0x1

    div-int/lit16 v0, v0, 0x3e8

    .line 362
    mul-int/lit8 v0, v0, 0x2

    .line 363
    div-int/lit8 v0, v0, 0x2

    new-array v2, v0, [S

    .line 364
    new-instance v3, Lcom/tencent/qqpinyin/voicerecoapi/d;

    invoke-direct {v3}, Lcom/tencent/qqpinyin/voicerecoapi/d;-><init>()V

    .line 366
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/tencent/mm/aj/g;->cDI:Lcom/tencent/mm/aj/f;

    invoke-static {v0}, Lcom/tencent/mm/aj/f;->h(Lcom/tencent/mm/aj/f;)I

    move-result v0

    if-nez v0, :cond_9

    .line 368
    iget-object v0, p0, Lcom/tencent/mm/aj/g;->cCX:Landroid/media/AudioRecord;

    const/4 v1, 0x0

    array-length v4, v2

    invoke-virtual {v0, v2, v1, v4}, Landroid/media/AudioRecord;->read([SII)I

    move-result v4

    .line 369
    const/4 v0, -0x3

    if-ne v4, v0, :cond_c

    .line 370
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "read() returned AudioRecord.ERROR_INVALID_OPERATION"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 427
    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/tencent/mm/aj/g;->cDI:Lcom/tencent/mm/aj/f;

    invoke-static {v0, v9}, Lcom/tencent/mm/aj/f;->a(Lcom/tencent/mm/aj/f;I)I

    .line 430
    :cond_9
    const-string v0, "MicroMsg.SceneVoiceAddr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reocording stop running flag:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/aj/g;->cDI:Lcom/tencent/mm/aj/f;

    invoke-static {v2}, Lcom/tencent/mm/aj/f;->h(Lcom/tencent/mm/aj/f;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget-object v0, p0, Lcom/tencent/mm/aj/g;->cDI:Lcom/tencent/mm/aj/f;

    invoke-static {v0}, Lcom/tencent/mm/aj/f;->e(Lcom/tencent/mm/aj/f;)Lcom/tencent/mm/aj/a;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 433
    iget-object v0, p0, Lcom/tencent/mm/aj/g;->cDI:Lcom/tencent/mm/aj/f;

    invoke-static {v0}, Lcom/tencent/mm/aj/f;->e(Lcom/tencent/mm/aj/f;)Lcom/tencent/mm/aj/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/aj/a;->EE()V

    .line 435
    :cond_a
    iget-object v0, p0, Lcom/tencent/mm/aj/g;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 436
    iget-boolean v0, p0, Lcom/tencent/mm/aj/g;->cDH:Z

    if-nez v0, :cond_b

    .line 437
    iget-object v0, p0, Lcom/tencent/mm/aj/g;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 439
    :cond_b
    invoke-direct {p0}, Lcom/tencent/mm/aj/g;->reset()V

    goto/16 :goto_2

    .line 350
    :catch_2
    move-exception v0

    iget-object v0, p0, Lcom/tencent/mm/aj/g;->cDI:Lcom/tencent/mm/aj/f;

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lcom/tencent/mm/aj/f;->b(Lcom/tencent/mm/aj/f;I)I

    .line 352
    const-string v0, "MicroMsg.SceneVoiceAddr"

    const-string v1, "filename open failed"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-direct {p0}, Lcom/tencent/mm/aj/g;->reset()V

    goto/16 :goto_2

    .line 371
    :cond_c
    const/4 v0, -0x2

    if-ne v4, v0, :cond_d

    .line 372
    :try_start_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "read() returned AudioRecord.ERROR_BAD_VALUE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_d
    iget-object v0, p0, Lcom/tencent/mm/aj/g;->cDF:Lcom/tencent/qqpinyin/voicerecoapi/c;

    invoke-virtual {v0, v2, v4, v3}, Lcom/tencent/qqpinyin/voicerecoapi/c;->a([SILcom/tencent/qqpinyin/voicerecoapi/d;)V

    .line 376
    iget v0, v3, Lcom/tencent/qqpinyin/voicerecoapi/d;->hwj:I

    if-eq v0, v10, :cond_e

    iget v0, v3, Lcom/tencent/qqpinyin/voicerecoapi/d;->hwj:I

    if-ne v0, v11, :cond_f

    .line 377
    :cond_e
    iget-object v0, p0, Lcom/tencent/mm/aj/g;->cDI:Lcom/tencent/mm/aj/f;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/tencent/mm/aj/f;->a(Lcom/tencent/mm/aj/f;I)I

    .line 380
    :cond_f
    iget-object v0, p0, Lcom/tencent/mm/aj/g;->cDI:Lcom/tencent/mm/aj/f;

    invoke-static {v0, v2, v4}, Lcom/tencent/mm/aj/f;->a(Lcom/tencent/mm/aj/f;[SI)V

    .line 397
    mul-int/lit8 v0, v4, 0x2

    new-array v5, v0, [B

    move v0, v6

    move v1, v6

    .line 398
    :goto_4
    if-ge v1, v4, :cond_10

    .line 399
    aget-short v7, v2, v1

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v5, v0

    .line 400
    add-int/lit8 v7, v0, 0x1

    aget-short v8, v2, v1

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    .line 398
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x2

    goto :goto_4

    .line 404
    :cond_10
    iget-object v0, p0, Lcom/tencent/mm/aj/g;->cDI:Lcom/tencent/mm/aj/f;

    invoke-static {v0}, Lcom/tencent/mm/aj/f;->c(Lcom/tencent/mm/aj/f;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 405
    iget-object v0, p0, Lcom/tencent/mm/aj/g;->cys:Lcom/tencent/qqpinyin/voicerecoapi/a;

    array-length v1, v5

    invoke-virtual {v0, v5, v1}, Lcom/tencent/qqpinyin/voicerecoapi/a;->m([BI)[B

    move-result-object v0

    .line 406
    const-string v7, "MicroMsg.SceneVoiceAddr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v8, "speex mode | pcmlen(short):"

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " pcmBufferInBytes:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " outSpeexBuf:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v0, :cond_11

    const-string v1, "null"

    :goto_5
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :goto_6
    if-eqz v0, :cond_8

    array-length v1, v0

    if-lez v1, :cond_8

    .line 416
    iget-object v1, p0, Lcom/tencent/mm/aj/g;->cyt:Ljava/io/FileOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 417
    iget-object v1, p0, Lcom/tencent/mm/aj/g;->cyt:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 418
    iget v1, p0, Lcom/tencent/mm/aj/g;->cDG:I

    array-length v0, v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/aj/g;->cDG:I

    .line 419
    iget v0, p0, Lcom/tencent/mm/aj/g;->cDG:I

    const/16 v1, 0xce4

    if-le v0, v1, :cond_8

    iget-boolean v0, p0, Lcom/tencent/mm/aj/g;->cDH:Z

    if-nez v0, :cond_8

    .line 420
    const-string v0, "MicroMsg.SceneVoiceAddr"

    const-string v1, "sendEmptyMessage(0)"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcom/tencent/mm/aj/g;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 422
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/aj/g;->cDH:Z

    goto/16 :goto_3

    .line 406
    :cond_11
    array-length v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_5

    .line 409
    :cond_12
    new-instance v0, Lcom/tencent/mm/pointers/PByteArray;

    invoke-direct {v0}, Lcom/tencent/mm/pointers/PByteArray;-><init>()V

    .line 410
    iget-object v1, p0, Lcom/tencent/mm/aj/g;->cBx:Lcom/tencent/mm/modelvoice/i;

    array-length v7, v5

    const/4 v8, 0x0

    invoke-virtual {v1, v5, v7, v0, v8}, Lcom/tencent/mm/modelvoice/i;->a([BILcom/tencent/mm/pointers/PByteArray;I)I

    .line 411
    iget-object v0, v0, Lcom/tencent/mm/pointers/PByteArray;->value:[B

    .line 412
    const-string v7, "MicroMsg.SceneVoiceAddr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v8, "amr mode | pcmlen(short):"

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " pcmBufferInBytes:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " outAmrBuf:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v0, :cond_13

    const-string v1, "null"

    :goto_7
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_13
    array-length v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v1

    goto :goto_7
.end method
