.class public Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;
.super Landroid/widget/GridView;
.source "SourceFile"


# static fields
.field private static flL:Lcom/tencent/mm/pluginsdk/ui/al;

.field public static final flx:I

.field public static flz:I


# instance fields
.field private cUu:I

.field private cUz:I

.field public dJC:I

.field private dne:Landroid/widget/AdapterView$OnItemClickListener;

.field private flA:I

.field private flB:I

.field public flC:I

.field private flD:I

.field private flE:Ljava/lang/String;

.field private flF:Lcom/tencent/mm/pluginsdk/ui/aw;

.field private flG:Lcom/tencent/mm/pluginsdk/ui/h;

.field public flH:Z

.field private flI:Z

.field private flJ:Z

.field private flK:Ljava/util/Map;

.field public fly:Lcom/tencent/mm/pluginsdk/ui/am;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x56

    :goto_0
    sput v0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flx:I

    .line 63
    const/4 v0, 0x1

    sput v0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flz:I

    .line 413
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flL:Lcom/tencent/mm/pluginsdk/ui/al;

    return-void

    .line 50
    :cond_0
    sget v1, Lcom/tencent/mm/g;->abp:I

    invoke-static {v0, v1}, Lcom/tencent/mm/an/a;->l(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mm/an/a;->n(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 212
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 65
    const/16 v0, 0x14

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flA:I

    .line 68
    iput v1, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flC:I

    .line 69
    iput v1, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flD:I

    .line 76
    iput v1, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->cUu:I

    .line 91
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/ai;

    invoke-direct {v0, p0}, Lcom/tencent/mm/pluginsdk/ui/ai;-><init>(Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;)V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->dne:Landroid/widget/AdapterView$OnItemClickListener;

    .line 408
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flK:Ljava/util/Map;

    .line 213
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->mContext:Landroid/content/Context;

    .line 214
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->LH()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    invoke-direct {p0, p1}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->r(Landroid/content/Context;)V

    .line 217
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 220
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    const/16 v0, 0x14

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flA:I

    .line 68
    iput v1, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flC:I

    .line 69
    iput v1, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flD:I

    .line 76
    iput v1, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->cUu:I

    .line 91
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/ai;

    invoke-direct {v0, p0}, Lcom/tencent/mm/pluginsdk/ui/ai;-><init>(Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;)V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->dne:Landroid/widget/AdapterView$OnItemClickListener;

    .line 408
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flK:Ljava/util/Map;

    .line 221
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->mContext:Landroid/content/Context;

    .line 222
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->LH()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->r(Landroid/content/Context;)V

    .line 225
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;)I
    .locals 1
    .parameter

    .prologue
    .line 45
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flA:I

    return v0
.end method

.method static synthetic a(Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 45
    sget-object v0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flL:Lcom/tencent/mm/pluginsdk/ui/al;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/al;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/mm/pluginsdk/ui/al;-><init>(Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;B)V

    sput-object v0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flL:Lcom/tencent/mm/pluginsdk/ui/al;

    :cond_0
    sget-object v0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flL:Lcom/tencent/mm/pluginsdk/ui/al;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/al;->a(Lcom/tencent/mm/pluginsdk/ui/al;)Ljava/lang/String;

    move-result-object v0

    if-eq v0, p1, :cond_2

    sget-object v0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flL:Lcom/tencent/mm/pluginsdk/ui/al;

    invoke-static {v0, p1}, Lcom/tencent/mm/pluginsdk/ui/al;->a(Lcom/tencent/mm/pluginsdk/ui/al;Ljava/lang/String;)Ljava/lang/String;

    sget-object v1, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flL:Lcom/tencent/mm/pluginsdk/ui/al;

    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apj()Lcom/tencent/mm/pluginsdk/i;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flE:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/tencent/mm/pluginsdk/i;->je(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/tencent/mm/pluginsdk/ui/al;->a(Lcom/tencent/mm/pluginsdk/ui/al;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flK:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flK:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flK:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flL:Lcom/tencent/mm/pluginsdk/ui/al;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flL:Lcom/tencent/mm/pluginsdk/ui/al;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/al;->b(Lcom/tencent/mm/pluginsdk/ui/al;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flL:Lcom/tencent/mm/pluginsdk/ui/al;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/al;->b(Lcom/tencent/mm/pluginsdk/ui/al;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_2
    :goto_0
    sget-object v0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flL:Lcom/tencent/mm/pluginsdk/ui/al;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/al;->b(Lcom/tencent/mm/pluginsdk/ui/al;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/mm/pluginsdk/ui/ak;

    invoke-direct {v1, p0}, Lcom/tencent/mm/pluginsdk/ui/ak;-><init>(Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;Lcom/tencent/mm/storage/y;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 45
    sget v0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flz:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flF:Lcom/tencent/mm/pluginsdk/ui/aw;

    invoke-interface {v0}, Lcom/tencent/mm/pluginsdk/ui/aw;->Wi()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/tencent/mm/storage/y;->getType()I

    move-result v0

    sget v1, Lcom/tencent/mm/storage/y;->ghr:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/mm/storage/y;->getType()I

    move-result v0

    sget v1, Lcom/tencent/mm/storage/y;->ghs:I

    if-ne v0, v1, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flF:Lcom/tencent/mm/pluginsdk/ui/aw;

    invoke-interface {v0}, Lcom/tencent/mm/pluginsdk/ui/aw;->Wh()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flF:Lcom/tencent/mm/pluginsdk/ui/aw;

    invoke-interface {v0, p1}, Lcom/tencent/mm/pluginsdk/ui/aw;->f(Lcom/tencent/mm/storage/y;)V

    const-string v0, "MicroMsg.SmileyGrid"

    const-string v1, "onSendAppMsgCustomEmoji emoji md5 is [%s]"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/tencent/mm/storage/y;->yK()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/tencent/mm/n;->bgT:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apj()Lcom/tencent/mm/pluginsdk/i;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/mm/pluginsdk/i;->c(Lcom/tencent/mm/storage/y;)Lcom/tencent/mm/storage/y;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flF:Lcom/tencent/mm/pluginsdk/ui/aw;

    invoke-interface {v1, v0}, Lcom/tencent/mm/pluginsdk/ui/aw;->e(Lcom/tencent/mm/storage/y;)V

    const-string v1, "MicroMsg.SmileyGrid"

    const-string v2, "onSendCustomEmoji emoji md5 is [%s]"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/y;->yK()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const-string v0, "MicroMsg.SmileyGrid"

    const-string v1, "onSendCustomEmoji error, emoji is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/tencent/mm/n;->bgU:I

    new-instance v2, Lcom/tencent/mm/pluginsdk/ui/aj;

    invoke-direct {v2, p0}, Lcom/tencent/mm/pluginsdk/ui/aj;-><init>(Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;)V

    invoke-static {v0, v1, v4, v2}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/tencent/mm/storage/y;->aBG()I

    move-result v0

    sget v1, Lcom/tencent/mm/storage/w;->ggX:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/tencent/mm/n;->bgE:I

    sget v2, Lcom/tencent/mm/n;->bgE:I

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/base/h;->c(Landroid/content/Context;II)Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/x;->show()V

    goto :goto_0
.end method

.method private art()V
    .locals 2

    .prologue
    .line 280
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flA:I

    packed-switch v0, :pswitch_data_0

    .line 290
    :goto_0
    :pswitch_0
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->cUz:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->setColumnWidth(I)V

    .line 291
    return-void

    .line 282
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->mContext:Landroid/content/Context;

    const/16 v1, 0x2b

    invoke-static {v0, v1}, Lcom/tencent/mm/an/a;->fromDPToPix(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->cUz:I

    goto :goto_0

    .line 286
    :pswitch_2
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->mContext:Landroid/content/Context;

    const/16 v1, 0x50

    invoke-static {v0, v1}, Lcom/tencent/mm/an/a;->fromDPToPix(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->cUz:I

    goto :goto_0

    .line 280
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static arv()V
    .locals 0

    .prologue
    .line 395
    return-void
.end method

.method static synthetic arw()Lcom/tencent/mm/pluginsdk/ui/al;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flL:Lcom/tencent/mm/pluginsdk/ui/al;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;)V
    .locals 4
    .parameter

    .prologue
    .line 45
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "emoji"

    const-string v3, ".ui.EmojiCustomUI"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/mm/ak/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic c(Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;)Lcom/tencent/mm/pluginsdk/ui/h;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flG:Lcom/tencent/mm/pluginsdk/ui/h;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;)I
    .locals 1
    .parameter

    .prologue
    .line 45
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flB:I

    return v0
.end method

.method static synthetic e(Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;)Z
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flI:Z

    return v0
.end method

.method static synthetic f(Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;)I
    .locals 1
    .parameter

    .prologue
    .line 45
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flD:I

    return v0
.end method

.method static synthetic h(Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic i(Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flK:Ljava/util/Map;

    return-object v0
.end method

.method private r(Landroid/content/Context;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x6

    const/4 v7, 0x0

    .line 241
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/am;

    invoke-direct {v0, p0}, Lcom/tencent/mm/pluginsdk/ui/am;-><init>(Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;)V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->fly:Lcom/tencent/mm/pluginsdk/ui/am;

    .line 242
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    invoke-virtual {p0, v7}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->setBackgroundResource(I)V

    .line 244
    invoke-virtual {p0, v9}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->setStretchMode(I)V

    .line 245
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->art()V

    .line 246
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->fly:Lcom/tencent/mm/pluginsdk/ui/am;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 247
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->dne:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 249
    invoke-static {p1, v2}, Lcom/tencent/mm/an/a;->fromDPToPix(Landroid/content/Context;I)I

    move-result v0

    .line 250
    invoke-static {p1, v2}, Lcom/tencent/mm/an/a;->fromDPToPix(Landroid/content/Context;I)I

    move-result v1

    .line 251
    invoke-static {p1, v2}, Lcom/tencent/mm/an/a;->fromDPToPix(Landroid/content/Context;I)I

    move-result v2

    .line 252
    const-string v3, "MicroMsg.SmileyGrid"

    const-string v4, "mItemWidthInPix:%d"

    new-array v5, v8, [Ljava/lang/Object;

    iget v6, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->cUz:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 254
    const-string v3, "MicroMsg.SmileyGrid"

    const-string v4, "paddingLeft:%d,paddingRight:%d,paddingTop:%d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    invoke-virtual {p0, v0, v2, v1, v7}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->setPadding(IIII)V

    .line 257
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->fly:Lcom/tencent/mm/pluginsdk/ui/am;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->fly:Lcom/tencent/mm/pluginsdk/ui/am;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/am;->arx()V

    .line 260
    :cond_0
    return-void
.end method


# virtual methods
.method protected LH()Z
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x1

    return v0
.end method

.method public final a(IIIIIILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 326
    const-string v0, "MicroMsg.SmileyGrid"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "type:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " itemsPerPage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " totalPage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " curPage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->dJC:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flH:Z

    .line 328
    iput p1, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flA:I

    .line 329
    iput p2, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->dJC:I

    .line 330
    iput p3, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flB:I

    .line 331
    iput p4, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flC:I

    .line 332
    iput p5, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flD:I

    .line 333
    iput-object p7, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flE:Ljava/lang/String;

    .line 334
    iput p6, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->cUu:I

    .line 335
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->art()V

    .line 336
    invoke-virtual {p0, p6}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->setNumColumns(I)V

    .line 337
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->fly:Lcom/tencent/mm/pluginsdk/ui/am;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/am;->update()V

    .line 338
    return-void
.end method

.method public final a(IIIIIILjava/lang/String;I)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 341
    const-string v0, "MicroMsg.SmileyGrid"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "type:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " itemsPerPage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " totalPage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " curPage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->dJC:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iput-boolean v4, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flH:Z

    .line 343
    iput p1, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flA:I

    .line 344
    iput p2, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->dJC:I

    .line 345
    iput p3, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flB:I

    .line 346
    iput p4, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flC:I

    .line 347
    iput p5, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flD:I

    .line 348
    iput-object p7, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flE:Ljava/lang/String;

    .line 349
    iput p6, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->cUu:I

    .line 350
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->cUu:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    div-int/lit8 v0, p8, 0x7

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->setColumnWidth(I)V

    :goto_0
    const-string v0, "MicroMsg.SmileyGrid"

    const-string v1, "gridViewWidth:%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 351
    invoke-virtual {p0, p6}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->setNumColumns(I)V

    .line 352
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->fly:Lcom/tencent/mm/pluginsdk/ui/am;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/am;->update()V

    .line 353
    return-void

    .line 350
    :cond_0
    div-int/lit8 v0, p8, 0xe

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->setColumnWidth(I)V

    goto :goto_0
.end method

.method public final a(Lcom/tencent/mm/pluginsdk/ui/aw;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flF:Lcom/tencent/mm/pluginsdk/ui/aw;

    .line 148
    return-void
.end method

.method public final a(Lcom/tencent/mm/pluginsdk/ui/h;)V
    .locals 0
    .parameter

    .prologue
    .line 372
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flG:Lcom/tencent/mm/pluginsdk/ui/h;

    .line 373
    return-void
.end method

.method public final aru()I
    .locals 1

    .prologue
    .line 391
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flA:I

    return v0
.end method

.method public final kg(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x6

    .line 263
    if-gtz p1, :cond_0

    .line 272
    :goto_0
    return-void

    .line 266
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/tencent/mm/an/a;->fromDPToPix(Landroid/content/Context;I)I

    move-result v0

    .line 267
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/tencent/mm/an/a;->fromDPToPix(Landroid/content/Context;I)I

    move-result v1

    .line 269
    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->setPadding(IIII)V

    .line 270
    div-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->setVerticalSpacing(I)V

    goto :goto_0
.end method

.method public final n(ZZ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 320
    iput-boolean p1, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flI:Z

    .line 321
    iput-boolean p2, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flJ:Z

    .line 323
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 236
    invoke-super {p0, p1}, Landroid/widget/GridView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 237
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 229
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/GridView;->onSizeChanged(IIII)V

    .line 231
    return-void
.end method

.method public final release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 364
    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flG:Lcom/tencent/mm/pluginsdk/ui/h;

    .line 365
    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flF:Lcom/tencent/mm/pluginsdk/ui/aw;

    .line 366
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->fly:Lcom/tencent/mm/pluginsdk/ui/am;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->fly:Lcom/tencent/mm/pluginsdk/ui/am;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/am;->ary()V

    .line 369
    :cond_0
    return-void
.end method
