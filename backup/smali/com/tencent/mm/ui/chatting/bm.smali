.class public final Lcom/tencent/mm/ui/chatting/bm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static gLG:Lcom/tencent/mm/ui/base/ch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mm/ui/chatting/bm;->gLG:Lcom/tencent/mm/ui/base/ch;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/base/ch;)Lcom/tencent/mm/ui/base/ch;
    .locals 0
    .parameter

    .prologue
    .line 30
    sput-object p0, Lcom/tencent/mm/ui/chatting/bm;->gLG:Lcom/tencent/mm/ui/base/ch;

    return-object p0
.end method

.method static synthetic a(Landroid/content/Context;Lcom/tencent/mm/storage/ak;ZLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->aCc()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p3, p1, p2}, Lcom/tencent/mm/ui/chatting/bg;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mm/storage/ak;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->aBY()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0, p3, p1}, Lcom/tencent/mm/ui/chatting/bg;->b(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mm/storage/ak;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->MP()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0, p3, p1}, Lcom/tencent/mm/ui/chatting/bg;->c(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mm/storage/ak;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->aCb()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0, p3, p1}, Lcom/tencent/mm/ui/chatting/bg;->d(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mm/storage/ak;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->aCd()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->aCe()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    invoke-static {p1}, Lcom/tencent/mm/ui/chatting/bg;->z(Lcom/tencent/mm/storage/ak;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p3, p1}, Lcom/tencent/mm/ui/chatting/bg;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mm/storage/ak;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->aBT()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/tencent/mm/ui/chatting/bg;->A(Lcom/tencent/mm/storage/ak;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p3, p1, p2}, Lcom/tencent/mm/ui/chatting/bg;->b(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mm/storage/ak;Z)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    new-instance v0, Lcom/tencent/mm/ui/tools/dg;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/tools/dg;-><init>(Landroid/content/Context;)V

    .line 96
    new-instance v1, Lcom/tencent/mm/ui/chatting/bo;

    invoke-direct {v1}, Lcom/tencent/mm/ui/chatting/bo;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/dg;->a(Lcom/tencent/mm/ui/base/ca;)V

    .line 103
    new-instance v1, Lcom/tencent/mm/ui/chatting/bp;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/bp;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/dg;->a(Lcom/tencent/mm/ui/base/cb;)V

    .line 117
    new-instance v1, Lcom/tencent/mm/ui/chatting/bq;

    invoke-direct {v1}, Lcom/tencent/mm/ui/chatting/bq;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/dg;->a(Lcom/tencent/mm/ui/base/cc;)V

    .line 126
    new-instance v1, Lcom/tencent/mm/ui/chatting/br;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/mm/ui/chatting/br;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/dg;->b(Lcom/tencent/mm/ui/base/cd;)V

    .line 135
    invoke-static {p1}, Lcom/tencent/mm/ui/chatting/bg;->aC(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    const v0, 0x7f07021e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    new-instance v2, Lcom/tencent/mm/ui/chatting/bs;

    invoke-direct {v2}, Lcom/tencent/mm/ui/chatting/bs;-><init>()V

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/dg;->aNy()Lcom/tencent/mm/ui/base/ar;

    goto :goto_0
.end method

.method static synthetic aJa()Lcom/tencent/mm/ui/base/ch;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/tencent/mm/ui/chatting/bm;->gLG:Lcom/tencent/mm/ui/base/ch;

    return-object v0
.end method

.method static synthetic b(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-static {p0, p1, p2}, Lcom/tencent/mm/ui/chatting/bm;->a(Landroid/content/Context;Ljava/util/List;Z)V

    return-void
.end method

.method public static d(Landroid/content/Context;Ljava/util/List;ZLcom/tencent/mm/ui/chatting/fn;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 41
    if-nez p0, :cond_0

    .line 42
    const-string v0, "MicroMsg.ChattingEditModeSendToBrand"

    const-string v1, "do send to brand fail, context is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :goto_0
    return-void

    .line 45
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    :cond_1
    const-string v0, "MicroMsg.ChattingEditModeSendToBrand"

    const-string v1, "do send to brand fail, select item empty"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_2
    invoke-static {}, Lcom/tencent/mm/ui/chatting/bg;->aIY()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 50
    const v0, 0x7f070209

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/ui/base/h;->p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mm/ui/base/x;

    goto :goto_0

    .line 53
    :cond_3
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const-string v0, "MicroMsg.ChattingEditModeLogic"

    const-string v2, "check contain invalid send to brand msg error, selected item empty"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_1
    if-eqz v0, :cond_9

    .line 54
    const v0, 0x7f07020b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    new-instance v2, Lcom/tencent/mm/ui/chatting/bn;

    invoke-direct {v2, p1, p3, p0, p2}, Lcom/tencent/mm/ui/chatting/bn;-><init>(Ljava/util/List;Lcom/tencent/mm/ui/chatting/fn;Landroid/content/Context;Z)V

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    goto :goto_0

    .line 53
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/ak;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->aBV()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/bg;->z(Lcom/tencent/mm/storage/ak;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->aCa()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/bg;->A(Lcom/tencent/mm/storage/ak;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->getType()I

    move-result v0

    const v3, -0x6ffffffa

    if-ne v0, v3, :cond_6

    :cond_7
    move v0, v1

    goto :goto_1

    :cond_8
    const/4 v0, 0x0

    goto :goto_1

    .line 69
    :cond_9
    invoke-static {p0, p1, p2}, Lcom/tencent/mm/ui/chatting/bm;->a(Landroid/content/Context;Ljava/util/List;Z)V

    goto/16 :goto_0
.end method
