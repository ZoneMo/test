.class final Lcom/tencent/mm/model/bm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/sdk/platformtools/av;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final du(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 583
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/mm/storage/h;->cfC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "crash_record_file"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    :cond_0
    :goto_0
    invoke-static {}, Lcom/tencent/mm/model/be;->ui()Lcom/tencent/mm/model/dv;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 586
    invoke-static {}, Lcom/tencent/mm/model/be;->ui()Lcom/tencent/mm/model/dv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/dv;->run()V

    .line 588
    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 589
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/model/b;->bX(Ljava/lang/String;)V

    .line 592
    :cond_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
