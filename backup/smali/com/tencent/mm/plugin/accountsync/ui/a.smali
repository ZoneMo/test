.class final Lcom/tencent/mm/plugin/accountsync/ui/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/plugin/accountsync/model/c;


# instance fields
.field private cIj:Z

.field private cIk:Lcom/tencent/mm/modelsimple/g;

.field final synthetic cIl:Lcom/tencent/mm/plugin/accountsync/ui/ContactsSyncUI;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/plugin/accountsync/ui/ContactsSyncUI;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/tencent/mm/plugin/accountsync/ui/a;->cIl:Lcom/tencent/mm/plugin/accountsync/ui/ContactsSyncUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    new-instance v0, Lcom/tencent/mm/plugin/accountsync/ui/b;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/accountsync/ui/b;-><init>(Lcom/tencent/mm/plugin/accountsync/ui/a;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/accountsync/ui/a;->cIk:Lcom/tencent/mm/modelsimple/g;

    .line 253
    iput-boolean p2, p0, Lcom/tencent/mm/plugin/accountsync/ui/a;->cIj:Z

    .line 254
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/accountsync/ui/a;Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 241
    invoke-direct {p0, p1, p2}, Lcom/tencent/mm/plugin/accountsync/ui/a;->z(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private z(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 304
    if-nez p1, :cond_0

    .line 316
    :goto_0
    return v0

    .line 307
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/plugin/accountsync/ui/a;->cIk:Lcom/tencent/mm/modelsimple/g;

    invoke-static {p1, p2, v1}, Lcom/tencent/mm/modelsimple/f;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mm/modelsimple/g;)I

    move-result v1

    .line 308
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 309
    iget-object v1, p0, Lcom/tencent/mm/plugin/accountsync/ui/a;->cIl:Lcom/tencent/mm/plugin/accountsync/ui/ContactsSyncUI;

    sget v2, Lcom/tencent/mm/n;->biJ:I

    invoke-virtual {v1, v2}, Lcom/tencent/mm/plugin/accountsync/ui/ContactsSyncUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 312
    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 313
    iget-object v1, p0, Lcom/tencent/mm/plugin/accountsync/ui/a;->cIl:Lcom/tencent/mm/plugin/accountsync/ui/ContactsSyncUI;

    sget v2, Lcom/tencent/mm/n;->biI:I

    invoke-virtual {v1, v2}, Lcom/tencent/mm/plugin/accountsync/ui/ContactsSyncUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 316
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final aj(Landroid/content/Context;)I
    .locals 7
    .parameter

    .prologue
    .line 258
    invoke-static {}, Lcom/tencent/mm/model/be;->uD()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/be;->uG()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    :cond_0
    const/4 v0, 0x4

    .line 299
    :goto_0
    return v0

    .line 262
    :cond_1
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/accountsync/ui/a;->cIj:Z

    if-nez v0, :cond_2

    .line 263
    const-string v0, "MicroMsg.ProcessorAddAccount"

    const-string v1, "no need to bind mobile"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/tencent/mm/plugin/accountsync/ui/a;->cIl:Lcom/tencent/mm/plugin/accountsync/ui/ContactsSyncUI;

    iget-object v1, p0, Lcom/tencent/mm/plugin/accountsync/ui/a;->cIk:Lcom/tencent/mm/modelsimple/g;

    invoke-static {v0, v1}, Lcom/tencent/mm/modelsimple/f;->a(Landroid/content/Context;Lcom/tencent/mm/modelsimple/g;)I

    .line 265
    const/4 v0, 0x0

    goto :goto_0

    .line 268
    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/4 v1, 0x6

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/e;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 269
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 270
    const-string v0, "MicroMsg.ProcessorAddAccount"

    const-string v1, "not bind mobile phone"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const/4 v0, 0x2

    goto :goto_0

    .line 275
    :cond_3
    invoke-static {}, Lcom/tencent/mm/modelfriend/z;->zo()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 276
    sget v1, Lcom/tencent/mm/n;->biH:I

    sget v2, Lcom/tencent/mm/n;->ber:I

    sget v3, Lcom/tencent/mm/n;->bee:I

    sget v4, Lcom/tencent/mm/n;->bds:I

    new-instance v5, Lcom/tencent/mm/plugin/accountsync/ui/c;

    invoke-direct {v5, p0, p1, v0}, Lcom/tencent/mm/plugin/accountsync/ui/c;-><init>(Lcom/tencent/mm/plugin/accountsync/ui/a;Landroid/content/Context;Ljava/lang/String;)V

    new-instance v6, Lcom/tencent/mm/plugin/accountsync/ui/d;

    invoke-direct {v6, p0, p1}, Lcom/tencent/mm/plugin/accountsync/ui/d;-><init>(Lcom/tencent/mm/plugin/accountsync/ui/a;Landroid/content/Context;)V

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;IIIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    .line 297
    const/4 v0, 0x5

    goto :goto_0

    .line 299
    :cond_4
    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/plugin/accountsync/ui/a;->z(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
