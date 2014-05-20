.class final Lcom/tencent/mm/plugin/voicereminder/a/i;
.super Lcom/tencent/mm/sdk/b/g;
.source "SourceFile"


# instance fields
.field final synthetic ePd:Lcom/tencent/mm/plugin/voicereminder/a/f;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/voicereminder/a/f;)V
    .locals 0
    .parameter

    .prologue
    .line 346
    iput-object p1, p0, Lcom/tencent/mm/plugin/voicereminder/a/i;->ePd:Lcom/tencent/mm/plugin/voicereminder/a/f;

    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/sdk/b/e;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 349
    check-cast p1, Lcom/tencent/mm/c/a/hw;

    .line 350
    iget-object v0, p1, Lcom/tencent/mm/c/a/hw;->bRs:Lcom/tencent/mm/c/a/hx;

    iget-object v0, v0, Lcom/tencent/mm/c/a/hx;->bRt:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v0, v3}, Lcom/tencent/mm/plugin/voicereminder/a/n;->B(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/tencent/mm/plugin/voicereminder/a/f;->ali()Lcom/tencent/mm/plugin/voicereminder/a/y;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tencent/mm/plugin/voicereminder/a/y;->hz(Ljava/lang/String;)Z

    :cond_0
    invoke-static {}, Lcom/tencent/mm/plugin/voicereminder/a/f;->ali()Lcom/tencent/mm/plugin/voicereminder/a/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/plugin/voicereminder/a/y;->hy(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 351
    :cond_1
    return v3
.end method
