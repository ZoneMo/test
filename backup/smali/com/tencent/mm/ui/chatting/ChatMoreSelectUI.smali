.class public Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;
.super Lcom/tencent/mm/ui/MMActivity;
.source "SourceFile"


# instance fields
.field private diw:Lcom/tencent/mm/ui/tools/eo;

.field private gLG:Lcom/tencent/mm/ui/base/ch;

.field private gLH:Landroid/widget/ListView;

.field private gLI:Lcom/tencent/mm/ui/transmit/s;

.field private gLJ:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;->gLG:Lcom/tencent/mm/ui/base/ch;

    .line 42
    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;->gLJ:I

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;Lcom/tencent/mm/ui/base/ch;)Lcom/tencent/mm/ui/base/ch;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;->gLG:Lcom/tencent/mm/ui/base/ch;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;)Lcom/tencent/mm/ui/transmit/s;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;->gLI:Lcom/tencent/mm/ui/transmit/s;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;->wv(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;)I
    .locals 1
    .parameter

    .prologue
    .line 32
    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;->gLJ:I

    return v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;->gLH:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;)Lcom/tencent/mm/ui/base/ch;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;->gLG:Lcom/tencent/mm/ui/base/ch;

    return-object v0
.end method

.method private wv(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    .line 156
    invoke-static {p1}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const-string v0, "MicroMsg.ChatMoreSelectUI"

    const-string v1, "avatarUseName is null or nil show dialog fail "

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :goto_0
    return-void

    .line 160
    :cond_0
    const/4 v4, 0x0

    .line 161
    invoke-static {p1}, Lcom/tencent/mm/model/w;->cp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/mm/model/r;->ci(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 165
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;->aal()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0701bd

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f0709c4

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/tencent/mm/ui/chatting/az;

    invoke-direct {v6, p0, p1}, Lcom/tencent/mm/ui/chatting/az;-><init>(Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;Ljava/lang/String;)V

    move-object v1, p1

    move-object v3, p1

    invoke-static/range {v0 .. v6}, Lcom/tencent/mm/pluginsdk/ui/applet/i;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/pluginsdk/ui/applet/r;)Lcom/tencent/mm/ui/base/ce;

    goto :goto_0
.end method


# virtual methods
.method protected final FR()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 71
    const v0, 0x7f0a0729

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;->gLH:Landroid/widget/ListView;

    .line 73
    new-instance v0, Lcom/tencent/mm/ui/tools/eo;

    invoke-direct {v0}, Lcom/tencent/mm/ui/tools/eo;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;->diw:Lcom/tencent/mm/ui/tools/eo;

    .line 74
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;->diw:Lcom/tencent/mm/ui/tools/eo;

    new-instance v3, Lcom/tencent/mm/ui/chatting/av;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/chatting/av;-><init>(Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;)V

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/tools/eo;->a(Lcom/tencent/mm/ui/tools/ez;)V

    .line 100
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;->diw:Lcom/tencent/mm/ui/tools/eo;

    invoke-virtual {p0, v1, v0}, Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;->a(ZLcom/tencent/mm/ui/tools/eo;)V

    .line 102
    const v0, 0x7f030276

    const/4 v3, 0x0

    invoke-static {p0, v0, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 103
    new-instance v3, Lcom/tencent/mm/ui/chatting/aw;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/chatting/aw;-><init>(Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;->gLH:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 120
    new-instance v0, Lcom/tencent/mm/ui/transmit/s;

    invoke-direct {v0, p0, v2}, Lcom/tencent/mm/ui/transmit/s;-><init>(Landroid/content/Context;B)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;->gLI:Lcom/tencent/mm/ui/transmit/s;

    .line 121
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;->gLJ:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;->gLJ:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const-string v0, "medianote"

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    const-string v0, "weixin"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/tencent/mm/model/w;->chR:[Ljava/lang/String;

    array-length v5, v4

    move v0, v2

    :goto_0
    if-ge v0, v5, :cond_1

    aget-object v6, v4, v0

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;->gLI:Lcom/tencent/mm/ui/transmit/s;

    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;->gLJ:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v4, v3, v0}, Lcom/tencent/mm/ui/transmit/s;->e(Ljava/util/List;Z)V

    .line 123
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;->gLH:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;->gLI:Lcom/tencent/mm/ui/transmit/s;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 124
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;->gLH:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/chatting/ax;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/ax;-><init>(Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 143
    const v0, 0x7f0701b9

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;->mn(I)V

    .line 144
    new-instance v0, Lcom/tencent/mm/ui/chatting/ay;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/chatting/ay;-><init>(Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 153
    return-void

    :cond_2
    move v0, v2

    .line 121
    goto :goto_1
.end method

.method protected final getLayoutId()I
    .locals 1

    .prologue
    .line 46
    const v0, 0x7f030275

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 195
    const-string v0, "MicroMsg.ChatMoreSelectUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityResult, requestCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resultCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    if-eqz p3, :cond_0

    .line 197
    const-string v0, "MicroMsg.ChatMoreSelectUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityResult, data.toString() = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/mm/ui/MMActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 202
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 203
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 204
    const-string v0, "MicroMsg.ChatMoreSelectUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getIntent = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v0, "Select_Conv_User"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;->wv(Ljava/lang/String;)V

    .line 212
    :cond_1
    :goto_0
    return-void

    .line 211
    :cond_2
    const-string v0, "MicroMsg.ChatMoreSelectUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityResult, unknown requestCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;->FR()V

    .line 53
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;->gLI:Lcom/tencent/mm/ui/transmit/s;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/transmit/s;->closeCursor()V

    .line 58
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    .line 59
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onPause()V

    .line 64
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;->diw:Lcom/tencent/mm/ui/tools/eo;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;->diw:Lcom/tencent/mm/ui/tools/eo;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/eo;->aNE()V

    .line 67
    :cond_0
    return-void
.end method
