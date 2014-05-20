.class final Lcom/tencent/mm/ui/chatting/au;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final synthetic gLC:Lcom/tencent/mm/ui/chatting/aq;


# direct methods
.method private constructor <init>(Lcom/tencent/mm/ui/chatting/aq;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/au;->gLC:Lcom/tencent/mm/ui/chatting/aq;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/mm/ui/chatting/aq;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/chatting/au;-><init>(Lcom/tencent/mm/ui/chatting/aq;)V

    return-void
.end method

.method private nx(I)Lcom/tencent/mm/p/h;
    .locals 1
    .parameter

    .prologue
    .line 192
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/au;->gLC:Lcom/tencent/mm/ui/chatting/aq;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/aq;->b(Lcom/tencent/mm/ui/chatting/aq;)Lcom/tencent/mm/p/h;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/p/h;->cnH:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/p/h;

    return-object v0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/au;->gLC:Lcom/tencent/mm/ui/chatting/aq;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/aq;->a(Lcom/tencent/mm/ui/chatting/aq;)I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/chatting/au;->nx(I)Lcom/tencent/mm/p/h;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 197
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 202
    if-nez p2, :cond_0

    .line 204
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/au;->gLC:Lcom/tencent/mm/ui/chatting/aq;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/aq;->c(Lcom/tencent/mm/ui/chatting/aq;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03006d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 208
    :goto_0
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/chatting/au;->nx(I)Lcom/tencent/mm/p/h;

    move-result-object v1

    .line 209
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 210
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/au;->gLC:Lcom/tencent/mm/ui/chatting/aq;

    invoke-static {v2}, Lcom/tencent/mm/ui/chatting/aq;->d(Lcom/tencent/mm/ui/chatting/aq;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, v1, Lcom/tencent/mm/p/h;->name:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-static {v2, v1, v3}, Lcom/tencent/mm/ao/b;->e(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    return-object v0

    .line 206
    :cond_0
    check-cast p2, Landroid/widget/TextView;

    move-object v0, p2

    goto :goto_0
.end method
