.class final Lcom/tencent/mm/ui/tools/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field ddT:Landroid/widget/ImageView;

.field ddV:Landroid/widget/TextView;

.field final synthetic hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

.field hho:Landroid/widget/TextView;

.field hhp:Landroid/widget/TextView;

.field hhq:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 749
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/s;->hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 750
    sget v0, Lcom/tencent/mm/i;->amr:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/s;->ddT:Landroid/widget/ImageView;

    .line 751
    sget v0, Lcom/tencent/mm/i;->amt:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/s;->ddV:Landroid/widget/TextView;

    .line 752
    sget v0, Lcom/tencent/mm/i;->aml:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/s;->hho:Landroid/widget/TextView;

    .line 753
    sget v0, Lcom/tencent/mm/i;->amy:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/s;->hhp:Landroid/widget/TextView;

    .line 754
    sget v0, Lcom/tencent/mm/i;->amx:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/s;->hhq:Landroid/widget/RadioButton;

    .line 755
    return-void
.end method
