.class public final Lcom/tencent/mm/plugin/extqlauncher/f;
.super Lcom/tencent/mm/sdk/b/g;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/g;-><init>()V

    .line 61
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/sdk/b/e;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 65
    instance-of v0, p1, Lcom/tencent/mm/c/a/ae;

    if-nez v0, :cond_0

    .line 66
    const-string v0, "MicroMsg.SubCoreExtQLauncher"

    const-string v1, "mismatched event"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->aM(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const/4 v0, 0x0

    .line 72
    :goto_0
    return v0

    .line 69
    :cond_0
    check-cast p1, Lcom/tencent/mm/c/a/ae;

    .line 70
    new-instance v0, Lcom/tencent/mm/plugin/extqlauncher/provider/ExtControlProviderQLauncher;

    iget-object v1, p1, Lcom/tencent/mm/c/a/ae;->bMs:Lcom/tencent/mm/c/a/af;

    iget-object v1, v1, Lcom/tencent/mm/c/a/af;->bMv:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/mm/c/a/ae;->bMs:Lcom/tencent/mm/c/a/af;

    iget v3, v3, Lcom/tencent/mm/c/a/af;->bMu:I

    iget-object v4, p1, Lcom/tencent/mm/c/a/ae;->bMs:Lcom/tencent/mm/c/a/af;

    iget-object v4, v4, Lcom/tencent/mm/c/a/af;->context:Landroid/content/Context;

    invoke-direct {v0, v1, v3, v4}, Lcom/tencent/mm/plugin/extqlauncher/provider/ExtControlProviderQLauncher;-><init>(Ljava/lang/String;ILandroid/content/Context;)V

    .line 71
    iget-object v6, p1, Lcom/tencent/mm/c/a/ae;->bMt:Lcom/tencent/mm/c/a/ag;

    iget-object v1, p1, Lcom/tencent/mm/c/a/ae;->bMs:Lcom/tencent/mm/c/a/af;

    iget-object v1, v1, Lcom/tencent/mm/c/a/af;->uri:Landroid/net/Uri;

    iget-object v3, p1, Lcom/tencent/mm/c/a/ae;->bMs:Lcom/tencent/mm/c/a/af;

    iget-object v4, v3, Lcom/tencent/mm/c/a/af;->selectionArgs:[Ljava/lang/String;

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/mm/plugin/extqlauncher/provider/ExtControlProviderQLauncher;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, v6, Lcom/tencent/mm/c/a/ag;->cursor:Landroid/database/Cursor;

    .line 72
    const/4 v0, 0x1

    goto :goto_0
.end method
