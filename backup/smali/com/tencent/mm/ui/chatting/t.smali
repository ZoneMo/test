.class final Lcom/tencent/mm/ui/chatting/t;
.super Lcom/tencent/mm/ui/bc;
.source "SourceFile"


# instance fields
.field private cKz:Ljava/util/List;

.field private gKD:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/mm/storage/i;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Lcom/tencent/mm/ui/bc;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 132
    return-void
.end method


# virtual methods
.method public final B([Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 191
    if-eqz p1, :cond_0

    .line 192
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/t;->gKD:[Ljava/lang/String;

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/t;->closeCursor()V

    .line 195
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/t;->FZ()V

    .line 196
    return-void
.end method

.method public final FZ()V
    .locals 5

    .prologue
    .line 187
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/t;->gKD:[Ljava/lang/String;

    const-string v2, "@all.chatroom"

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/t;->cKz:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/mm/storage/k;->a([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/t;->setCursor(Landroid/database/Cursor;)V

    .line 188
    return-void
.end method

.method protected final Ga()V
    .locals 0

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/t;->closeCursor()V

    .line 215
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/t;->FZ()V

    .line 216
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 124
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    invoke-static {p2}, Lcom/tencent/mm/storage/i;->f(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/k;->tI(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/storage/i;

    invoke-direct {v0}, Lcom/tencent/mm/storage/i;-><init>()V

    invoke-virtual {v0, p2}, Lcom/tencent/mm/storage/i;->convertFrom(Landroid/database/Cursor;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/k;->y(Lcom/tencent/mm/storage/i;)V

    :cond_0
    return-object v0
.end method

.method public final aB(Ljava/util/List;)V
    .locals 2
    .parameter

    .prologue
    .line 199
    if-nez p1, :cond_0

    .line 200
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 202
    :cond_0
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/t;->cKz:Ljava/util/List;

    .line 204
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sz()Lcom/tencent/mm/storage/cc;

    move-result-object v0

    const-string v1, "@t.qq.com"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/cc;->vB(Ljava/lang/String;)Lcom/tencent/mm/storage/ca;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_1

    .line 206
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/t;->cKz:Ljava/util/List;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ca;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/t;->ca(Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 136
    if-nez p2, :cond_0

    .line 140
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/t;->context:Landroid/content/Context;

    const v1, 0x7f030031

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 141
    new-instance v1, Lcom/tencent/mm/ui/chatting/u;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/tencent/mm/ui/chatting/u;-><init>(B)V

    .line 142
    const v0, 0x7f0a00ba

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/MaskLayout;

    iput-object v0, v1, Lcom/tencent/mm/ui/chatting/u;->cTU:Lcom/tencent/mm/ui/base/MaskLayout;

    .line 143
    const v0, 0x7f0a00bb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/ui/chatting/u;->cMU:Landroid/widget/TextView;

    .line 144
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    .line 149
    :goto_0
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/chatting/t;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/i;

    .line 152
    iget-object v3, v2, Lcom/tencent/mm/ui/chatting/u;->cMU:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/t;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/model/w;->db(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const v1, 0x7f0c0100

    :goto_1
    invoke-static {v4, v1}, Lcom/tencent/mm/an/a;->j(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 153
    iget-object v1, v2, Lcom/tencent/mm/ui/chatting/u;->cTU:Lcom/tencent/mm/ui/base/MaskLayout;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/base/MaskLayout;->getContentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 154
    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/mm/pluginsdk/ui/c;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rJ()I

    move-result v1

    if-eqz v1, :cond_3

    .line 158
    invoke-static {}, Lcom/tencent/mm/model/ar;->ub()Lcom/tencent/mm/model/av;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rJ()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/tencent/mm/model/av;->cq(I)Ljava/lang/String;

    move-result-object v1

    .line 160
    if-eqz v1, :cond_2

    .line 161
    invoke-static {v1}, Lcom/tencent/mm/p/u;->eN(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 162
    iget-object v3, v2, Lcom/tencent/mm/ui/chatting/u;->cTU:Lcom/tencent/mm/ui/base/MaskLayout;

    sget-object v4, Lcom/tencent/mm/ui/base/dv;->gCR:Lcom/tencent/mm/ui/base/dv;

    invoke-virtual {v3, v1, v4}, Lcom/tencent/mm/ui/base/MaskLayout;->a(Landroid/graphics/Bitmap;Lcom/tencent/mm/ui/base/dv;)V

    .line 171
    :goto_2
    iget-object v1, v2, Lcom/tencent/mm/ui/chatting/u;->cMU:Landroid/widget/TextView;

    iget-object v3, v2, Lcom/tencent/mm/ui/chatting/u;->cMU:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/t;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rr()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v2, Lcom/tencent/mm/ui/chatting/u;->cMU:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v3, v0, v2}, Lcom/tencent/mm/ao/b;->e(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    return-object p2

    .line 146
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/chatting/u;

    move-object v2, v0

    goto :goto_0

    .line 152
    :cond_1
    const v1, 0x7f0c0102

    goto :goto_1

    .line 164
    :cond_2
    iget-object v1, v2, Lcom/tencent/mm/ui/chatting/u;->cTU:Lcom/tencent/mm/ui/base/MaskLayout;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/base/MaskLayout;->aHz()V

    goto :goto_2

    .line 167
    :cond_3
    iget-object v1, v2, Lcom/tencent/mm/ui/chatting/u;->cTU:Lcom/tencent/mm/ui/base/MaskLayout;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/base/MaskLayout;->aHz()V

    goto :goto_2
.end method
