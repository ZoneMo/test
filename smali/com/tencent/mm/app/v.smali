.class final Lcom/tencent/mm/app/v;
.super Lcom/tencent/mm/sdk/b/g;
.source "SourceFile"


# instance fields
.field final synthetic bLu:Lcom/tencent/mm/app/WorkerProfile;


# direct methods
.method constructor <init>(Lcom/tencent/mm/app/WorkerProfile;)V
    .locals 0
    .parameter

    .prologue
    .line 398
    iput-object p1, p0, Lcom/tencent/mm/app/v;->bLu:Lcom/tencent/mm/app/WorkerProfile;

    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/sdk/b/e;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 402
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    check-cast p1, Lcom/tencent/mm/c/a/dg;

    iget-object v0, p1, Lcom/tencent/mm/c/a/dg;->bOn:Lcom/tencent/mm/c/a/dh;

    iget v0, v0, Lcom/tencent/mm/c/a/dh;->bOo:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 413
    :goto_0
    if-eqz v0, :cond_2

    .line 414
    sget-object v0, Lcom/tencent/mm/model/bd;->cik:Lcom/tencent/mm/model/bd;

    const-string v1, "login_user_name"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Lcom/tencent/mm/model/bd;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    :cond_0
    :goto_1
    return v2

    :cond_1
    move v0, v2

    .line 412
    goto :goto_0

    .line 417
    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/m/c;->dW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 418
    if-eqz v0, :cond_3

    sget-object v1, Lcom/tencent/mm/model/bd;->cik:Lcom/tencent/mm/model/bd;

    const-string v3, "last_avatar_path"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/tencent/mm/model/bd;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 419
    const-string v1, "MicroMsg.WorkerProfile"

    const-string v3, "[PREF] last_avatar_path has changed, commit."

    invoke-static {v1, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    sget-object v1, Lcom/tencent/mm/model/bd;->cik:Lcom/tencent/mm/model/bd;

    const-string v3, "last_avatar_path"

    invoke-virtual {v1, v3, v0}, Lcom/tencent/mm/model/bd;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :cond_3
    sget-object v3, Lcom/tencent/mm/model/bd;->cik:Lcom/tencent/mm/model/bd;

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v1

    const/16 v4, 0x9

    invoke-virtual {v1, v4}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v1

    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v0, v4, v1}, Lcom/tencent/mm/model/bd;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1
.end method
