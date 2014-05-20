.class public final Lcom/tencent/mm/ui/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/c/j;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private ezK:Landroid/os/Handler;

.field private hrZ:Lb/a/e/b;

.field private hsa:Lb/a/d/i;

.field private hsb:Lb/a/d/i;

.field private hsc:Z

.field private hsd:Z

.field public hse:Lcom/tencent/mm/ui/c/f;

.field public hsf:Lcom/tencent/mm/ui/c/e;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object v2, p0, Lcom/tencent/mm/ui/c/a;->hrZ:Lb/a/e/b;

    .line 59
    iput-object v2, p0, Lcom/tencent/mm/ui/c/a;->hsa:Lb/a/d/i;

    .line 60
    iput-object v2, p0, Lcom/tencent/mm/ui/c/a;->hsb:Lb/a/d/i;

    .line 62
    iput-boolean v0, p0, Lcom/tencent/mm/ui/c/a;->hsc:Z

    .line 63
    iput-boolean v0, p0, Lcom/tencent/mm/ui/c/a;->hsd:Z

    .line 65
    iput-object v2, p0, Lcom/tencent/mm/ui/c/a;->hse:Lcom/tencent/mm/ui/c/f;

    .line 66
    iput-object v2, p0, Lcom/tencent/mm/ui/c/a;->hsf:Lcom/tencent/mm/ui/c/e;

    .line 68
    iput-object v2, p0, Lcom/tencent/mm/ui/c/a;->context:Landroid/content/Context;

    .line 70
    new-instance v0, Lcom/tencent/mm/ui/c/b;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/c/b;-><init>(Lcom/tencent/mm/ui/c/a;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/c/a;->ezK:Landroid/os/Handler;

    .line 92
    new-instance v0, Lb/a/a/a;

    invoke-direct {v0}, Lb/a/a/a;-><init>()V

    const-class v1, Lb/a/a/a/c;

    invoke-virtual {v0, v1}, Lb/a/a/a;->f(Ljava/lang/Class;)Lb/a/a/a;

    move-result-object v0

    const-string v1, "XMr2y8FEVEqZBcZ1TU3gLA"

    invoke-virtual {v0, v1}, Lb/a/a/a;->yj(Ljava/lang/String;)Lb/a/a/a;

    move-result-object v0

    const-string v1, "kyWwA5vbB6H1NDQFufR9hD5vWGStxhweIbatclCo"

    invoke-virtual {v0, v1}, Lb/a/a/a;->yk(Ljava/lang/String;)Lb/a/a/a;

    move-result-object v0

    const-string v1, "wechatapp://sign-in-twitter.wechatapp.com/"

    invoke-virtual {v0, v1}, Lb/a/a/a;->yi(Ljava/lang/String;)Lb/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a;->aRb()Lb/a/e/b;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/c/a;->hrZ:Lb/a/e/b;

    .line 97
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const v1, 0x10f01

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v1

    const v3, 0x10f02

    invoke-virtual {v1, v3}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v0, v2

    :goto_0
    iput-object v0, p0, Lcom/tencent/mm/ui/c/a;->hsa:Lb/a/d/i;

    .line 98
    return-void

    .line 97
    :cond_1
    new-instance v2, Lb/a/d/i;

    invoke-direct {v2, v0, v1}, Lb/a/d/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/c/a;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tencent/mm/ui/c/a;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/c/a;Lb/a/d/i;)Lb/a/d/i;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/tencent/mm/ui/c/a;->hsb:Lb/a/d/i;

    return-object p1
.end method

.method private static a(Lb/a/d/i;)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x10f02

    const v3, 0x10f01

    .line 195
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->azs()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 199
    if-nez p0, :cond_0

    .line 200
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v3, v1}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 201
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v4, v1}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 206
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    invoke-virtual {p0}, Lb/a/d/i;->ank()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 204
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    invoke-virtual {p0}, Lb/a/d/i;->aRw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/c/a;Lcom/tencent/mm/ui/c/g;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/c/a;->c(Lcom/tencent/mm/ui/c/g;)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/ui/c/a;)Lb/a/e/b;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tencent/mm/ui/c/a;->hrZ:Lb/a/e/b;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/c/a;Lcom/tencent/mm/ui/c/g;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/c/a;->hsd:Z

    sget-object v0, Lcom/tencent/mm/ui/c/g;->hsi:Lcom/tencent/mm/ui/c/g;

    if-ne p1, v0, :cond_0

    iput-object v1, p0, Lcom/tencent/mm/ui/c/a;->hsb:Lb/a/d/i;

    invoke-static {v1}, Lcom/tencent/mm/ui/c/a;->a(Lb/a/d/i;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/c/a;->hsf:Lcom/tencent/mm/ui/c/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/c/a;->hsf:Lcom/tencent/mm/ui/c/e;

    invoke-interface {v0, p1}, Lcom/tencent/mm/ui/c/e;->b(Lcom/tencent/mm/ui/c/g;)V

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/tencent/mm/ui/c/a;)Lb/a/d/i;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tencent/mm/ui/c/a;->hsb:Lb/a/d/i;

    return-object v0
.end method

.method private c(Lcom/tencent/mm/ui/c/g;)V
    .locals 1
    .parameter

    .prologue
    .line 234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/c/a;->hsc:Z

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/c/a;->hsb:Lb/a/d/i;

    .line 236
    iget-object v0, p0, Lcom/tencent/mm/ui/c/a;->hse:Lcom/tencent/mm/ui/c/f;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/tencent/mm/ui/c/a;->hse:Lcom/tencent/mm/ui/c/f;

    invoke-interface {v0, p1}, Lcom/tencent/mm/ui/c/f;->a(Lcom/tencent/mm/ui/c/g;)V

    .line 239
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/tencent/mm/ui/c/a;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tencent/mm/ui/c/a;->ezK:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/c/a;)Lb/a/d/i;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tencent/mm/ui/c/a;->hsa:Lb/a/d/i;

    return-object v0
.end method

.method private static ez(Z)V
    .locals 4
    .parameter

    .prologue
    .line 289
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 290
    if-eqz p0, :cond_0

    const-string v0, "1"

    .line 291
    :goto_0
    new-instance v2, Lcom/tencent/mm/storage/bj;

    const/16 v3, 0x280b

    invoke-direct {v2, v3, v0}, Lcom/tencent/mm/storage/bj;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->st()Lcom/tencent/mm/storage/au;

    move-result-object v0

    new-instance v2, Lcom/tencent/mm/storage/bi;

    invoke-direct {v2, v1}, Lcom/tencent/mm/storage/bi;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/au;->a(Lcom/tencent/mm/storage/bz;)V

    .line 293
    return-void

    .line 290
    :cond_0
    const-string v0, "2"

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/ui/c/e;)V
    .locals 1
    .parameter

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/tencent/mm/ui/c/a;->hsd:Z

    if-eqz v0, :cond_0

    .line 192
    :goto_0
    return-void

    .line 162
    :cond_0
    iput-object p1, p0, Lcom/tencent/mm/ui/c/a;->hsf:Lcom/tencent/mm/ui/c/e;

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/c/a;->hsd:Z

    .line 166
    new-instance v0, Lcom/tencent/mm/ui/c/d;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/c/d;-><init>(Lcom/tencent/mm/ui/c/a;)V

    invoke-virtual {v0}, Lcom/tencent/mm/ui/c/d;->start()V

    goto :goto_0
.end method

.method public final a(Lcom/tencent/mm/ui/c/f;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/tencent/mm/ui/c/a;->hsc:Z

    if-eqz v0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 106
    :cond_0
    iput-object p1, p0, Lcom/tencent/mm/ui/c/a;->hse:Lcom/tencent/mm/ui/c/f;

    .line 107
    iput-object p2, p0, Lcom/tencent/mm/ui/c/a;->context:Landroid/content/Context;

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/c/a;->hsc:Z

    .line 111
    new-instance v0, Lcom/tencent/mm/ui/c/c;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/c/c;-><init>(Lcom/tencent/mm/ui/c/a;)V

    invoke-virtual {v0}, Lcom/tencent/mm/ui/c/c;->start()V

    goto :goto_0
.end method

.method public final aPc()Z
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/tencent/mm/ui/c/a;->hsa:Lb/a/d/i;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final aPd()V
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/mm/ui/c/a;->ez(Z)V

    .line 279
    sget-object v0, Lcom/tencent/mm/ui/c/g;->hsi:Lcom/tencent/mm/ui/c/g;

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/c/a;->c(Lcom/tencent/mm/ui/c/g;)V

    .line 280
    return-void
.end method

.method public final ajq()Lb/a/d/i;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/tencent/mm/ui/c/a;->hsa:Lb/a/d/i;

    return-object v0
.end method

.method public final e(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 244
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/tencent/mm/ui/c/a;->ez(Z)V

    .line 248
    const-string v1, "oauth_verifier"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 249
    if-eqz v1, :cond_0

    .line 250
    new-instance v2, Lb/a/d/k;

    invoke-direct {v2, v1}, Lb/a/d/k;-><init>(Ljava/lang/String;)V

    .line 253
    :try_start_0
    iget-object v1, p0, Lcom/tencent/mm/ui/c/a;->hrZ:Lb/a/e/b;

    iget-object v3, p0, Lcom/tencent/mm/ui/c/a;->hsb:Lb/a/d/i;

    invoke-interface {v1, v3, v2}, Lb/a/e/b;->a(Lb/a/d/i;Lb/a/d/k;)Lb/a/d/i;
    :try_end_0
    .catch Lb/a/b/a; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 260
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 261
    iput-object v0, p0, Lcom/tencent/mm/ui/c/a;->hsa:Lb/a/d/i;

    .line 262
    iget-object v0, p0, Lcom/tencent/mm/ui/c/a;->hsa:Lb/a/d/i;

    invoke-static {v0}, Lcom/tencent/mm/ui/c/a;->a(Lb/a/d/i;)V

    .line 263
    sget-object v0, Lcom/tencent/mm/ui/c/g;->hsh:Lcom/tencent/mm/ui/c/g;

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/c/a;->c(Lcom/tencent/mm/ui/c/g;)V

    .line 268
    :goto_1
    return-void

    .line 265
    :cond_1
    sget-object v0, Lcom/tencent/mm/ui/c/g;->hsi:Lcom/tencent/mm/ui/c/g;

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/c/a;->c(Lcom/tencent/mm/ui/c/g;)V

    goto :goto_1

    .line 256
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final onCancel()V
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/mm/ui/c/a;->ez(Z)V

    .line 285
    sget-object v0, Lcom/tencent/mm/ui/c/g;->hsj:Lcom/tencent/mm/ui/c/g;

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/c/a;->c(Lcom/tencent/mm/ui/c/g;)V

    .line 286
    return-void
.end method
