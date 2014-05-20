.class public final Lcom/tencent/mm/ui/chatting/fn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static gOp:Lcom/tencent/mm/sdk/platformtools/bu;


# instance fields
.field private diw:Lcom/tencent/mm/ui/tools/eo;

.field private eSm:Lcom/tencent/mm/storage/i;

.field private gJU:Z

.field private gNS:Z

.field private gOq:Lcom/tencent/mm/ui/chatting/ChattingUI;

.field private gOr:Lcom/tencent/mm/ui/chatting/ChattingFooterMoreBtnBar;

.field private gOs:Lcom/tencent/mm/ui/chatting/es;

.field private gOt:Lcom/tencent/mm/ui/chatting/fv;

.field private gOu:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

.field private gOv:Lcom/tencent/mm/ui/chatting/ChatFooterCustom;

.field private gOw:I

.field private gOx:I

.field private gOy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mm/ui/chatting/fn;->gOp:Lcom/tencent/mm/sdk/platformtools/bu;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/ui/chatting/ChattingFooterMoreBtnBar;Lcom/tencent/mm/ui/chatting/es;Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;Lcom/tencent/mm/ui/chatting/ChatFooterCustom;Lcom/tencent/mm/storage/i;Z)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean v3, p0, Lcom/tencent/mm/ui/chatting/fn;->gNS:Z

    .line 50
    iput-boolean v3, p0, Lcom/tencent/mm/ui/chatting/fn;->gOy:Z

    .line 53
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/fn;->gOq:Lcom/tencent/mm/ui/chatting/ChattingUI;

    .line 54
    iput-object p2, p0, Lcom/tencent/mm/ui/chatting/fn;->gOr:Lcom/tencent/mm/ui/chatting/ChattingFooterMoreBtnBar;

    .line 55
    iput-object p4, p0, Lcom/tencent/mm/ui/chatting/fn;->gOu:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    .line 56
    iput-object p5, p0, Lcom/tencent/mm/ui/chatting/fn;->gOv:Lcom/tencent/mm/ui/chatting/ChatFooterCustom;

    .line 57
    iput-object p3, p0, Lcom/tencent/mm/ui/chatting/fn;->gOs:Lcom/tencent/mm/ui/chatting/es;

    .line 58
    iput-object p6, p0, Lcom/tencent/mm/ui/chatting/fn;->eSm:Lcom/tencent/mm/storage/i;

    .line 59
    iput-boolean p7, p0, Lcom/tencent/mm/ui/chatting/fn;->gJU:Z

    .line 60
    sget-object v0, Lcom/tencent/mm/ui/chatting/fn;->gOp:Lcom/tencent/mm/sdk/platformtools/bu;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/tencent/mm/sdk/platformtools/bu;

    const/4 v1, 0x5

    const-string v2, "MicroMsg.ChattingMoreBtnBarHelper"

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/bu;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/mm/ui/chatting/fn;->gOp:Lcom/tencent/mm/sdk/platformtools/bu;

    .line 63
    :cond_0
    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/fn;->aJr()V

    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/fn;->gOy:Z

    if-eqz v0, :cond_1

    const-string v0, "MicroMsg.ChattingMoreBtnBarHelper"

    const-string v1, "is in show search chat result"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fn;->gOr:Lcom/tencent/mm/ui/chatting/ChattingFooterMoreBtnBar;

    const/4 v1, 0x3

    new-instance v2, Lcom/tencent/mm/ui/chatting/fp;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/chatting/fp;-><init>(Lcom/tencent/mm/ui/chatting/fn;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/ui/chatting/ChattingFooterMoreBtnBar;->b(ILandroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/tencent/mm/ui/chatting/bg;->aIY()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "MicroMsg.ChattingMoreBtnBarHelper"

    const-string v1, "init footer bar listener, no biz, set visibility gone"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fn;->gOr:Lcom/tencent/mm/ui/chatting/ChattingFooterMoreBtnBar;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingFooterMoreBtnBar;->aJg()V

    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fn;->gOr:Lcom/tencent/mm/ui/chatting/ChattingFooterMoreBtnBar;

    const/4 v1, 0x1

    new-instance v2, Lcom/tencent/mm/ui/chatting/fs;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/chatting/fs;-><init>(Lcom/tencent/mm/ui/chatting/fn;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/ui/chatting/ChattingFooterMoreBtnBar;->b(ILandroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fn;->gOr:Lcom/tencent/mm/ui/chatting/ChattingFooterMoreBtnBar;

    new-instance v1, Lcom/tencent/mm/ui/chatting/ft;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/ft;-><init>(Lcom/tencent/mm/ui/chatting/fn;)V

    invoke-virtual {v0, v3, v1}, Lcom/tencent/mm/ui/chatting/ChattingFooterMoreBtnBar;->b(ILandroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fn;->gOs:Lcom/tencent/mm/ui/chatting/es;

    new-instance v1, Lcom/tencent/mm/ui/chatting/fo;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/fo;-><init>(Lcom/tencent/mm/ui/chatting/fn;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/es;->o(Landroid/view/View$OnClickListener;)V

    .line 64
    return-void

    .line 63
    :cond_1
    new-instance v0, Lcom/tencent/mm/ui/tools/eo;

    invoke-direct {v0}, Lcom/tencent/mm/ui/tools/eo;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/fn;->diw:Lcom/tencent/mm/ui/tools/eo;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fn;->diw:Lcom/tencent/mm/ui/tools/eo;

    new-instance v1, Lcom/tencent/mm/ui/chatting/fu;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/fu;-><init>(Lcom/tencent/mm/ui/chatting/fn;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/eo;->a(Lcom/tencent/mm/ui/tools/ez;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fn;->gOr:Lcom/tencent/mm/ui/chatting/ChattingFooterMoreBtnBar;

    const/4 v1, 0x2

    new-instance v2, Lcom/tencent/mm/ui/chatting/fr;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/chatting/fr;-><init>(Lcom/tencent/mm/ui/chatting/fn;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/ui/chatting/ChattingFooterMoreBtnBar;->b(ILandroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/chatting/fn;)Lcom/tencent/mm/ui/chatting/es;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fn;->gOs:Lcom/tencent/mm/ui/chatting/es;

    return-object v0
.end method

.method private aJr()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fn;->gOu:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->getVisibility()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/chatting/fn;->gOw:I

    .line 210
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fn;->gOv:Lcom/tencent/mm/ui/chatting/ChatFooterCustom;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fn;->gOv:Lcom/tencent/mm/ui/chatting/ChatFooterCustom;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChatFooterCustom;->getVisibility()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/chatting/fn;->gOx:I

    .line 215
    :goto_0
    return-void

    .line 213
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/ui/chatting/fn;->gOx:I

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/chatting/fn;)Lcom/tencent/mm/ui/chatting/ChattingUI;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fn;->gOq:Lcom/tencent/mm/ui/chatting/ChattingUI;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/chatting/fn;)Lcom/tencent/mm/ui/tools/eo;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fn;->diw:Lcom/tencent/mm/ui/tools/eo;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/chatting/fn;)Lcom/tencent/mm/ui/chatting/ChattingFooterMoreBtnBar;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fn;->gOr:Lcom/tencent/mm/ui/chatting/ChattingFooterMoreBtnBar;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/chatting/fn;)Ljava/util/List;
    .locals 9
    .parameter

    .prologue
    .line 25
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fn;->gOs:Lcom/tencent/mm/ui/chatting/es;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/es;->aJn()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-string v0, "MicroMsg.ChattingMoreBtnBarHelper"

    const-string v5, "select msg id %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v0, v5, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/storage/ap;->bU(J)Lcom/tencent/mm/storage/ak;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method static synthetic f(Lcom/tencent/mm/ui/chatting/fn;)Z
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/fn;->gJU:Z

    return v0
.end method

.method static synthetic g(Lcom/tencent/mm/ui/chatting/fn;)Lcom/tencent/mm/storage/i;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fn;->eSm:Lcom/tencent/mm/storage/i;

    return-object v0
.end method

.method static synthetic h(Lcom/tencent/mm/ui/chatting/fn;)Lcom/tencent/mm/ui/chatting/fv;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fn;->gOt:Lcom/tencent/mm/ui/chatting/fv;

    return-object v0
.end method

.method static synthetic i(Lcom/tencent/mm/ui/chatting/fn;)Z
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/fn;->gNS:Z

    return v0
.end method


# virtual methods
.method public final D(Lcom/tencent/mm/storage/ak;)V
    .locals 3
    .parameter

    .prologue
    .line 97
    if-nez p1, :cond_1

    .line 98
    const-string v0, "MicroMsg.ChattingMoreBtnBarHelper"

    const-string v1, "perform search mode click msg item fail, msg is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fn;->gOs:Lcom/tencent/mm/ui/chatting/es;

    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/ui/chatting/es;->ce(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fn;->gOs:Lcom/tencent/mm/ui/chatting/es;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/es;->XS()I

    move-result v0

    .line 103
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/fn;->gOr:Lcom/tencent/mm/ui/chatting/ChattingFooterMoreBtnBar;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/chatting/ChattingFooterMoreBtnBar;->ny(I)V

    .line 104
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fn;->gOr:Lcom/tencent/mm/ui/chatting/ChattingFooterMoreBtnBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingFooterMoreBtnBar;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fn;->diw:Lcom/tencent/mm/ui/tools/eo;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/eo;->aNE()V

    goto :goto_0
.end method

.method public final E(Lcom/tencent/mm/storage/ak;)V
    .locals 5
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 224
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fn;->gOq:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/fn;->diw:Lcom/tencent/mm/ui/tools/eo;

    invoke-virtual {v0, v3, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->a(ZLcom/tencent/mm/ui/tools/eo;)V

    .line 225
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fn;->gOu:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fn;->gOv:Lcom/tencent/mm/ui/chatting/ChatFooterCustom;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/mm/ui/chatting/fn;->gOx:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fn;->gOv:Lcom/tencent/mm/ui/chatting/ChatFooterCustom;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/chatting/ChatFooterCustom;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fn;->gOr:Lcom/tencent/mm/ui/chatting/ChattingFooterMoreBtnBar;

    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/chatting/ChattingFooterMoreBtnBar;->setVisibility(I)V

    .line 226
    iput-boolean v3, p0, Lcom/tencent/mm/ui/chatting/fn;->gNS:Z

    .line 229
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fn;->gOq:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJD()V

    .line 230
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fn;->gOs:Lcom/tencent/mm/ui/chatting/es;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/es;->aJp()V

    .line 231
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fn;->gOs:Lcom/tencent/mm/ui/chatting/es;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/es;->aJo()V

    .line 232
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fn;->gOs:Lcom/tencent/mm/ui/chatting/es;

    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/ui/chatting/es;->ce(J)Z

    .line 235
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fn;->gOs:Lcom/tencent/mm/ui/chatting/es;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/es;->XS()I

    move-result v0

    .line 236
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/fn;->gOr:Lcom/tencent/mm/ui/chatting/ChattingFooterMoreBtnBar;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/chatting/ChattingFooterMoreBtnBar;->ny(I)V

    .line 238
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fn;->gOq:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJY()V

    .line 239
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fn;->gOq:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->SM()V

    .line 240
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fn;->gOq:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJy()V

    .line 241
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fn;->gOq:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJx()V

    .line 243
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v1, 0x2a3b

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    .line 244
    return-void
.end method

.method public final a(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;Lcom/tencent/mm/ui/chatting/ChatFooterCustom;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/fn;->gOu:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    .line 219
    iput-object p2, p0, Lcom/tencent/mm/ui/chatting/fn;->gOv:Lcom/tencent/mm/ui/chatting/ChatFooterCustom;

    .line 220
    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/fn;->aJr()V

    .line 221
    return-void
.end method

.method public final a(Lcom/tencent/mm/ui/chatting/fv;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/fn;->gOt:Lcom/tencent/mm/ui/chatting/fv;

    .line 72
    return-void
.end method

.method public final aJs()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 247
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fn;->gOq:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/fn;->diw:Lcom/tencent/mm/ui/tools/eo;

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->a(ZLcom/tencent/mm/ui/tools/eo;)V

    .line 248
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fn;->gOu:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    iget v1, p0, Lcom/tencent/mm/ui/chatting/fn;->gOw:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fn;->gOv:Lcom/tencent/mm/ui/chatting/ChatFooterCustom;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/mm/ui/chatting/fn;->gOx:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fn;->gOv:Lcom/tencent/mm/ui/chatting/ChatFooterCustom;

    iget v1, p0, Lcom/tencent/mm/ui/chatting/fn;->gOx:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChatFooterCustom;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fn;->gOr:Lcom/tencent/mm/ui/chatting/ChattingFooterMoreBtnBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingFooterMoreBtnBar;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fn;->gOs:Lcom/tencent/mm/ui/chatting/es;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/es;->aJq()V

    .line 251
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fn;->gOq:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJD()V

    .line 253
    iput-boolean v2, p0, Lcom/tencent/mm/ui/chatting/fn;->gNS:Z

    .line 255
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fn;->gOq:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJy()V

    .line 256
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fn;->gOq:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJZ()V

    .line 257
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fn;->gOq:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJx()V

    .line 259
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fn;->gOq:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->SM()V

    .line 260
    return-void
.end method

.method public final aJt()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fn;->gOq:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJD()V

    .line 264
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fn;->gOr:Lcom/tencent/mm/ui/chatting/ChattingFooterMoreBtnBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingFooterMoreBtnBar;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fn;->gOr:Lcom/tencent/mm/ui/chatting/ChattingFooterMoreBtnBar;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/fn;->gOs:Lcom/tencent/mm/ui/chatting/es;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/chatting/es;->XS()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingFooterMoreBtnBar;->ny(I)V

    .line 266
    return-void
.end method

.method public final aJu()Z
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/fn;->gNS:Z

    return v0
.end method

.method public final aJv()V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fn;->diw:Lcom/tencent/mm/ui/tools/eo;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fn;->diw:Lcom/tencent/mm/ui/tools/eo;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/eo;->aNE()V

    .line 349
    :cond_0
    return-void
.end method

.method public final dK(Z)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/tencent/mm/ui/chatting/fn;->gOy:Z

    .line 68
    return-void
.end method
