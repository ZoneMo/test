.class final Lcom/tencent/mm/pluginsdk/model/downloader/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic dRo:Ljava/io/File;

.field final synthetic fii:Ljava/lang/String;

.field final synthetic fij:Lcom/tencent/mm/pluginsdk/model/downloader/c;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/model/downloader/c;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 668
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/model/downloader/a;->fii:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/mm/pluginsdk/model/downloader/a;->fij:Lcom/tencent/mm/pluginsdk/model/downloader/c;

    iput-object p3, p0, Lcom/tencent/mm/pluginsdk/model/downloader/a;->dRo:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 672
    new-instance v0, Lcom/tencent/mm/pluginsdk/model/downloader/b;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/model/downloader/a;->fii:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/model/downloader/a;->fij:Lcom/tencent/mm/pluginsdk/model/downloader/c;

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/pluginsdk/model/downloader/b;-><init>(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/model/downloader/c;)V

    .line 673
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/io/File;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tencent/mm/pluginsdk/model/downloader/a;->dRo:Ljava/io/File;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/model/downloader/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 674
    return-void
.end method
