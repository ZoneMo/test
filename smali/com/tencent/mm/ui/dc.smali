.class final Lcom/tencent/mm/ui/dc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic dPV:Ljava/lang/String;

.field final synthetic eeS:Ljava/lang/String;

.field final synthetic gom:Lcom/tencent/mm/ui/cy;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/cy;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/tencent/mm/ui/dc;->gom:Lcom/tencent/mm/ui/cy;

    iput-boolean p2, p0, Lcom/tencent/mm/ui/dc;->val$visible:Z

    iput-object p3, p0, Lcom/tencent/mm/ui/dc;->dPV:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/mm/ui/dc;->eeS:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 187
    iget-object v0, p0, Lcom/tencent/mm/ui/dc;->gom:Lcom/tencent/mm/ui/cy;

    invoke-static {v0}, Lcom/tencent/mm/ui/cy;->b(Lcom/tencent/mm/ui/cy;)Landroid/view/View;

    move-result-object v1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/dc;->val$visible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/tencent/mm/ui/dc;->gom:Lcom/tencent/mm/ui/cy;

    sget v1, Lcom/tencent/mm/n;->bpe:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/cy;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 189
    iget-object v0, p0, Lcom/tencent/mm/ui/dc;->dPV:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/dc;->gom:Lcom/tencent/mm/ui/cy;

    sget v2, Lcom/tencent/mm/n;->bpd:I

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/cy;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 191
    :goto_1
    iget-object v2, p0, Lcom/tencent/mm/ui/dc;->eeS:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 192
    new-instance v2, Landroid/text/SpannableString;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 193
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const v4, -0x9a6919

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x21

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 194
    iget-object v0, p0, Lcom/tencent/mm/ui/dc;->gom:Lcom/tencent/mm/ui/cy;

    invoke-static {v0}, Lcom/tencent/mm/ui/cy;->c(Lcom/tencent/mm/ui/cy;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    :goto_2
    iget-object v0, p0, Lcom/tencent/mm/ui/dc;->gom:Lcom/tencent/mm/ui/cy;

    invoke-static {v0}, Lcom/tencent/mm/ui/cy;->b(Lcom/tencent/mm/ui/cy;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 199
    iget-object v0, p0, Lcom/tencent/mm/ui/dc;->gom:Lcom/tencent/mm/ui/cy;

    invoke-static {v0}, Lcom/tencent/mm/ui/cy;->d(Lcom/tencent/mm/ui/cy;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 200
    return-void

    .line 187
    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/dc;->dPV:Ljava/lang/String;

    goto :goto_1

    .line 196
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/ui/dc;->gom:Lcom/tencent/mm/ui/cy;

    invoke-static {v1}, Lcom/tencent/mm/ui/cy;->c(Lcom/tencent/mm/ui/cy;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
