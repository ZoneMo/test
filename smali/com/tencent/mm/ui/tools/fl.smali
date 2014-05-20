.class final Lcom/tencent/mm/ui/tools/fl;
.super Lcom/tencent/mm/ui/bc;
.source "SourceFile"


# instance fields
.field private gUt:Ljava/util/List;

.field final synthetic hmh:Lcom/tencent/mm/ui/tools/ShareImageUI;

.field private hmk:[Z


# direct methods
.method private constructor <init>(Lcom/tencent/mm/ui/tools/ShareImageUI;Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/fl;->hmh:Lcom/tencent/mm/ui/tools/ShareImageUI;

    .line 126
    new-instance v0, Lcom/tencent/mm/storage/i;

    invoke-direct {v0}, Lcom/tencent/mm/storage/i;-><init>()V

    invoke-direct {p0, p2, v0}, Lcom/tencent/mm/ui/bc;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 127
    iput-object p3, p0, Lcom/tencent/mm/ui/tools/fl;->gUt:Ljava/util/List;

    .line 128
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/fl;->hmk:[Z

    .line 129
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/fl;->hmk:[Z

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 130
    iget-object v2, p0, Lcom/tencent/mm/ui/tools/fl;->hmk:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v0

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/mm/ui/tools/ShareImageUI;Landroid/content/Context;Ljava/util/List;B)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/mm/ui/tools/fl;-><init>(Lcom/tencent/mm/ui/tools/ShareImageUI;Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final FZ()V
    .locals 2

    .prologue
    .line 207
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/fl;->gUt:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/k;->as(Ljava/util/List;)Landroid/database/Cursor;

    move-result-object v0

    .line 208
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/fl;->setCursor(Landroid/database/Cursor;)V

    .line 210
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/fl;->notifyDataSetChanged()V

    .line 211
    return-void
.end method

.method protected final Ga()V
    .locals 0

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/fl;->FZ()V

    .line 216
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 121
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

.method public final aNK()Ljava/util/ArrayList;
    .locals 4

    .prologue
    .line 142
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 143
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/fl;->gUt:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_1

    .line 144
    iget-object v3, p0, Lcom/tencent/mm/ui/tools/fl;->hmk:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_0

    .line 145
    iget-object v3, p0, Lcom/tencent/mm/ui/tools/fl;->gUt:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_1
    return-object v1
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x8

    .line 154
    if-nez p2, :cond_1

    .line 156
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/fl;->context:Landroid/content/Context;

    const v1, 0x7f0300b9

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 157
    new-instance v1, Lcom/tencent/mm/ui/tools/fm;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/tools/fm;-><init>(Lcom/tencent/mm/ui/tools/fl;)V

    .line 158
    const v0, 0x7f0a0078

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/ui/tools/fm;->cMT:Landroid/widget/TextView;

    .line 159
    const v0, 0x7f0a007b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/MaskLayout;

    iput-object v0, v1, Lcom/tencent/mm/ui/tools/fm;->cTU:Lcom/tencent/mm/ui/base/MaskLayout;

    .line 160
    const v0, 0x7f0a0083

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/ui/tools/fm;->cMU:Landroid/widget/TextView;

    .line 161
    const v0, 0x7f0a0080

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/tencent/mm/ui/tools/fm;->cMW:Landroid/widget/CheckBox;

    .line 162
    const v0, 0x7f0a0084

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/ui/tools/fm;->dKL:Landroid/widget/TextView;

    .line 164
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    .line 170
    :goto_0
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/tools/fl;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/i;

    .line 171
    iget-object v1, v2, Lcom/tencent/mm/ui/tools/fm;->cMT:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    iget-object v1, v2, Lcom/tencent/mm/ui/tools/fm;->cMW:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/fl;->hmk:[Z

    aget-boolean v3, v3, p1

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 174
    iget-object v1, v2, Lcom/tencent/mm/ui/tools/fm;->cMW:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 176
    iget-object v1, v2, Lcom/tencent/mm/ui/tools/fm;->cTU:Lcom/tencent/mm/ui/base/MaskLayout;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/base/MaskLayout;->getContentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 177
    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/mm/pluginsdk/ui/c;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 178
    iget-object v1, v2, Lcom/tencent/mm/ui/tools/fm;->dKL:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    :try_start_0
    iget-object v1, v2, Lcom/tencent/mm/ui/tools/fm;->cMU:Landroid/widget/TextView;

    iget-object v3, v2, Lcom/tencent/mm/ui/tools/fm;->cMU:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/fl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x20

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v4, v2, Lcom/tencent/mm/ui/tools/fm;->cMU:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v3, v0, v4}, Lcom/tencent/mm/ao/b;->e(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_1
    return-object p2

    .line 167
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/tools/fm;

    move-object v2, v0

    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    iget-object v0, v2, Lcom/tencent/mm/ui/tools/fm;->cMU:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public final oi(I)V
    .locals 2
    .parameter

    .prologue
    .line 135
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/fl;->hmk:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 136
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/fl;->hmk:[Z

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/fl;->hmk:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    aput-boolean v0, v1, p1

    .line 137
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/fl;->notifyDataSetChanged()V

    .line 139
    :cond_0
    return-void

    .line 136
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
