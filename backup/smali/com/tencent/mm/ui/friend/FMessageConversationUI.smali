.class public Lcom/tencent/mm/ui/friend/FMessageConversationUI;
.super Lcom/tencent/mm/ui/MMActivity;
.source "SourceFile"


# instance fields
.field private cQa:Lcom/tencent/mm/ui/base/cd;

.field private cTq:Ljava/lang/String;

.field private haK:Lcom/tencent/mm/ui/friend/m;

.field private hbc:Landroid/widget/ListView;

.field private hbd:Lcom/tencent/mm/ui/friend/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    .line 214
    new-instance v0, Lcom/tencent/mm/ui/friend/ae;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/friend/ae;-><init>(Lcom/tencent/mm/ui/friend/FMessageConversationUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/FMessageConversationUI;->cQa:Lcom/tencent/mm/ui/base/cd;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/friend/FMessageConversationUI;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FMessageConversationUI;->hbc:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/friend/FMessageConversationUI;)Lcom/tencent/mm/ui/friend/m;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FMessageConversationUI;->haK:Lcom/tencent/mm/ui/friend/m;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/friend/FMessageConversationUI;)Lcom/tencent/mm/ui/base/cd;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FMessageConversationUI;->cQa:Lcom/tencent/mm/ui/base/cd;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/friend/FMessageConversationUI;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FMessageConversationUI;->cTq:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic xl(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    invoke-static {p0}, Lcom/tencent/mm/ah/d;->gF(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final FR()V
    .locals 3

    .prologue
    .line 68
    new-instance v0, Lcom/tencent/mm/ui/friend/m;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/friend/FMessageConversationUI;->aal()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/mm/ui/friend/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/FMessageConversationUI;->haK:Lcom/tencent/mm/ui/friend/m;

    .line 69
    invoke-static {}, Lcom/tencent/mm/ah/k;->Dy()Lcom/tencent/mm/ah/b;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/FMessageConversationUI;->haK:Lcom/tencent/mm/ui/friend/m;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ah/b;->e(Lcom/tencent/mm/sdk/e/al;)V

    .line 71
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FMessageConversationUI;->haK:Lcom/tencent/mm/ui/friend/m;

    new-instance v1, Lcom/tencent/mm/ui/friend/w;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/friend/w;-><init>(Lcom/tencent/mm/ui/friend/FMessageConversationUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/friend/m;->a(Lcom/tencent/mm/ui/base/cy;)V

    .line 79
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FMessageConversationUI;->haK:Lcom/tencent/mm/ui/friend/m;

    new-instance v1, Lcom/tencent/mm/ui/friend/x;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/friend/x;-><init>(Lcom/tencent/mm/ui/friend/FMessageConversationUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/friend/m;->a(Lcom/tencent/mm/ui/base/dc;)V

    .line 87
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FMessageConversationUI;->haK:Lcom/tencent/mm/ui/friend/m;

    new-instance v1, Lcom/tencent/mm/ui/friend/y;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/friend/y;-><init>(Lcom/tencent/mm/ui/friend/FMessageConversationUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/friend/m;->a(Lcom/tencent/mm/ui/base/db;)V

    .line 99
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FMessageConversationUI;->haK:Lcom/tencent/mm/ui/friend/m;

    new-instance v1, Lcom/tencent/mm/ui/friend/z;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/friend/z;-><init>(Lcom/tencent/mm/ui/friend/FMessageConversationUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/friend/m;->a(Lcom/tencent/mm/ui/bd;)V

    .line 115
    const v0, 0x7f0a038a

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/friend/FMessageConversationUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/FMessageConversationUI;->hbc:Landroid/widget/ListView;

    .line 116
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FMessageConversationUI;->hbc:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/FMessageConversationUI;->haK:Lcom/tencent/mm/ui/friend/m;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 118
    new-instance v0, Lcom/tencent/mm/ui/tools/dg;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/tools/dg;-><init>(Landroid/content/Context;)V

    .line 119
    iget-object v1, p0, Lcom/tencent/mm/ui/friend/FMessageConversationUI;->hbc:Landroid/widget/ListView;

    new-instance v2, Lcom/tencent/mm/ui/friend/aa;

    invoke-direct {v2, p0, v0}, Lcom/tencent/mm/ui/friend/aa;-><init>(Lcom/tencent/mm/ui/friend/FMessageConversationUI;Lcom/tencent/mm/ui/tools/dg;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 133
    new-instance v0, Lcom/tencent/mm/ui/friend/e;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/friend/FMessageConversationUI;->aal()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/friend/FMessageConversationUI;->haK:Lcom/tencent/mm/ui/friend/m;

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/ui/friend/e;-><init>(Landroid/content/Context;Lcom/tencent/mm/ui/friend/m;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/FMessageConversationUI;->hbd:Lcom/tencent/mm/ui/friend/e;

    .line 134
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FMessageConversationUI;->hbc:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/FMessageConversationUI;->hbd:Lcom/tencent/mm/ui/friend/e;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 137
    const v0, 0x7f0a038b

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/friend/FMessageConversationUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 138
    new-instance v1, Lcom/tencent/mm/ui/friend/ab;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/friend/ab;-><init>(Lcom/tencent/mm/ui/friend/FMessageConversationUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v1, p0, Lcom/tencent/mm/ui/friend/FMessageConversationUI;->hbc:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 154
    const/4 v0, 0x0

    const v1, 0x7f0708bc

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/friend/FMessageConversationUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/friend/ac;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/friend/ac;-><init>(Lcom/tencent/mm/ui/friend/FMessageConversationUI;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/mm/ui/friend/FMessageConversationUI;->a(ILjava/lang/String;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 164
    new-instance v0, Lcom/tencent/mm/ui/friend/ad;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/friend/ad;-><init>(Lcom/tencent/mm/ui/friend/FMessageConversationUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/friend/FMessageConversationUI;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 173
    return-void
.end method

.method protected final getLayoutId()I
    .locals 1

    .prologue
    .line 185
    const v0, 0x7f030112

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f070403

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/friend/FMessageConversationUI;->mn(I)V

    .line 48
    invoke-virtual {p0}, Lcom/tencent/mm/ui/friend/FMessageConversationUI;->FR()V

    .line 49
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 200
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 201
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FMessageConversationUI;->haK:Lcom/tencent/mm/ui/friend/m;

    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/friend/m;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ah/a;

    .line 202
    if-nez v0, :cond_0

    .line 203
    const-string v0, "MicroMsg.FMessageConversationUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onItemLongClick, item is null, pos = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v1, v0, Lcom/tencent/mm/ah/a;->field_displayName:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 208
    iget-object v1, v0, Lcom/tencent/mm/ah/a;->field_displayName:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-static {p0, v1, v2}, Lcom/tencent/mm/ao/b;->e(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 210
    :cond_1
    const v1, 0x7f0709c7

    invoke-interface {p1, v3, v3, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 211
    iget-object v0, v0, Lcom/tencent/mm/ah/a;->field_talker:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/FMessageConversationUI;->cTq:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    .line 62
    invoke-static {}, Lcom/tencent/mm/ah/k;->Dy()Lcom/tencent/mm/ah/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ah/b;->Do()Z

    .line 63
    invoke-static {}, Lcom/tencent/mm/ah/k;->Dy()Lcom/tencent/mm/ah/b;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/FMessageConversationUI;->haK:Lcom/tencent/mm/ui/friend/m;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ah/b;->f(Lcom/tencent/mm/sdk/e/al;)V

    .line 64
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 53
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onPause()V

    .line 56
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const v1, 0x23102

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 57
    return-void
.end method
