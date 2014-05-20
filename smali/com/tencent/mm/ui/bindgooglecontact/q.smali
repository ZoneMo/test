.class final Lcom/tencent/mm/ui/bindgooglecontact/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field cID:Landroid/widget/ImageView;

.field dIs:Landroid/widget/TextView;

.field dQa:Landroid/widget/TextView;

.field frH:Ljava/lang/String;

.field gHM:Landroid/widget/TextView;

.field gHN:Landroid/view/View;

.field gHO:Landroid/widget/ProgressBar;

.field final synthetic gHP:Lcom/tencent/mm/ui/bindgooglecontact/o;

.field position:I

.field status:I


# direct methods
.method public constructor <init>(Lcom/tencent/mm/ui/bindgooglecontact/o;Landroid/view/View;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/tencent/mm/ui/bindgooglecontact/q;->gHP:Lcom/tencent/mm/ui/bindgooglecontact/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    sget v0, Lcom/tencent/mm/i;->avw:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/bindgooglecontact/q;->cID:Landroid/widget/ImageView;

    .line 206
    sget v0, Lcom/tencent/mm/i;->avA:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/bindgooglecontact/q;->dIs:Landroid/widget/TextView;

    .line 207
    sget v0, Lcom/tencent/mm/i;->avB:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/bindgooglecontact/q;->gHN:Landroid/view/View;

    .line 208
    sget v0, Lcom/tencent/mm/i;->avC:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/bindgooglecontact/q;->dQa:Landroid/widget/TextView;

    .line 209
    sget v0, Lcom/tencent/mm/i;->avz:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/tencent/mm/ui/bindgooglecontact/q;->gHO:Landroid/widget/ProgressBar;

    .line 210
    sget v0, Lcom/tencent/mm/i;->avx:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/bindgooglecontact/q;->gHM:Landroid/widget/TextView;

    .line 212
    iget-object v0, p0, Lcom/tencent/mm/ui/bindgooglecontact/q;->gHN:Landroid/view/View;

    new-instance v1, Lcom/tencent/mm/ui/bindgooglecontact/r;

    invoke-direct {v1, p0, p1}, Lcom/tencent/mm/ui/bindgooglecontact/r;-><init>(Lcom/tencent/mm/ui/bindgooglecontact/q;Lcom/tencent/mm/ui/bindgooglecontact/o;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    return-void
.end method
