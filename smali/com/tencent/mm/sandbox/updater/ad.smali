.class public final Lcom/tencent/mm/sandbox/updater/ad;
.super Lcom/tencent/mm/sdk/b/g;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/g;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/sdk/b/e;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 18
    instance-of v0, p1, Lcom/tencent/mm/c/a/ht;

    if-nez v0, :cond_1

    .line 44
    :cond_0
    :goto_0
    return v3

    .line 22
    :cond_1
    check-cast p1, Lcom/tencent/mm/c/a/ht;

    .line 23
    iget-object v0, p1, Lcom/tencent/mm/c/a/ht;->bRo:Lcom/tencent/mm/c/a/hu;

    iget-object v0, v0, Lcom/tencent/mm/c/a/hu;->context:Landroid/content/Context;

    sget v1, Lcom/tencent/mm/n;->bnp:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/mm/sandbox/updater/Updater;->a(Landroid/content/Context;Landroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/sandbox/updater/Updater;

    move-result-object v0

    .line 24
    if-eqz v0, :cond_0

    .line 27
    iget-object v1, p1, Lcom/tencent/mm/c/a/ht;->bRo:Lcom/tencent/mm/c/a/hu;

    iget v1, v1, Lcom/tencent/mm/c/a/hu;->type:I

    new-instance v2, Lcom/tencent/mm/sandbox/updater/ae;

    invoke-direct {v2, p0, p1}, Lcom/tencent/mm/sandbox/updater/ae;-><init>(Lcom/tencent/mm/sandbox/updater/ad;Lcom/tencent/mm/c/a/ht;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sandbox/updater/Updater;->lA(I)V

    goto :goto_0
.end method
