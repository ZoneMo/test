.class final Lcom/tencent/mm/plugin/scanner/ui/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ecv:I

.field final synthetic ecw:Lcom/tencent/mm/plugin/scanner/ui/a;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/scanner/ui/a;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/tencent/mm/plugin/scanner/ui/b;->ecw:Lcom/tencent/mm/plugin/scanner/ui/a;

    iput p2, p0, Lcom/tencent/mm/plugin/scanner/ui/b;->ecv:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 177
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/n/ac;->wS()I

    move-result v0

    if-eq v0, v3, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/n/ac;->wS()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/b;->ecw:Lcom/tencent/mm/plugin/scanner/ui/a;

    iget-object v0, v0, Lcom/tencent/mm/plugin/scanner/ui/a;->ecu:Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->b(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 204
    :cond_1
    :goto_0
    return-void

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/b;->ecw:Lcom/tencent/mm/plugin/scanner/ui/a;

    iget-object v0, v0, Lcom/tencent/mm/plugin/scanner/ui/a;->ecu:Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->c(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/b;->ecw:Lcom/tencent/mm/plugin/scanner/ui/a;

    iget-object v0, v0, Lcom/tencent/mm/plugin/scanner/ui/a;->ecu:Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->d(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 182
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/b;->ecw:Lcom/tencent/mm/plugin/scanner/ui/a;

    iget-object v0, v0, Lcom/tencent/mm/plugin/scanner/ui/a;->ecu:Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->c(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/b;->ecw:Lcom/tencent/mm/plugin/scanner/ui/a;

    iget-object v0, v0, Lcom/tencent/mm/plugin/scanner/ui/a;->ecu:Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->d(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 185
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/b;->ecw:Lcom/tencent/mm/plugin/scanner/ui/a;

    iget-object v0, v0, Lcom/tencent/mm/plugin/scanner/ui/a;->ecu:Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;

    invoke-static {v0, v3}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->a(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;Z)Z

    .line 186
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/b;->ecw:Lcom/tencent/mm/plugin/scanner/ui/a;

    iget-object v0, v0, Lcom/tencent/mm/plugin/scanner/ui/a;->ecu:Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;

    invoke-static {v0, v2}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->b(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;Z)Z

    .line 187
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/b;->ecw:Lcom/tencent/mm/plugin/scanner/ui/a;

    iget-object v0, v0, Lcom/tencent/mm/plugin/scanner/ui/a;->ecu:Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->e(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;)V

    .line 201
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/b;->ecw:Lcom/tencent/mm/plugin/scanner/ui/a;

    iget-object v0, v0, Lcom/tencent/mm/plugin/scanner/ui/a;->ecu:Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->f(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;)Lcom/tencent/mm/plugin/scanner/ui/ai;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/b;->ecw:Lcom/tencent/mm/plugin/scanner/ui/a;

    iget-object v0, v0, Lcom/tencent/mm/plugin/scanner/ui/a;->ecu:Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->f(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;)Lcom/tencent/mm/plugin/scanner/ui/ai;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/plugin/scanner/ui/b;->ecv:I

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/scanner/ui/ai;->aav()V

    goto :goto_0

    .line 189
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/b;->ecw:Lcom/tencent/mm/plugin/scanner/ui/a;

    iget-object v0, v0, Lcom/tencent/mm/plugin/scanner/ui/a;->ecu:Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->b(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/b;->ecw:Lcom/tencent/mm/plugin/scanner/ui/a;

    iget-object v0, v0, Lcom/tencent/mm/plugin/scanner/ui/a;->ecu:Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->c(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/b;->ecw:Lcom/tencent/mm/plugin/scanner/ui/a;

    iget-object v0, v0, Lcom/tencent/mm/plugin/scanner/ui/a;->ecu:Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->d(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 193
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/b;->ecw:Lcom/tencent/mm/plugin/scanner/ui/a;

    iget-object v0, v0, Lcom/tencent/mm/plugin/scanner/ui/a;->ecu:Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->c(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/tencent/mm/n;->bxq:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 194
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/b;->ecw:Lcom/tencent/mm/plugin/scanner/ui/a;

    iget-object v0, v0, Lcom/tencent/mm/plugin/scanner/ui/a;->ecu:Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->d(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/b;->ecw:Lcom/tencent/mm/plugin/scanner/ui/a;

    iget-object v0, v0, Lcom/tencent/mm/plugin/scanner/ui/a;->ecu:Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->c(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 197
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/b;->ecw:Lcom/tencent/mm/plugin/scanner/ui/a;

    iget-object v0, v0, Lcom/tencent/mm/plugin/scanner/ui/a;->ecu:Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;

    invoke-static {v0, v2}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->a(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;Z)Z

    .line 198
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/b;->ecw:Lcom/tencent/mm/plugin/scanner/ui/a;

    iget-object v0, v0, Lcom/tencent/mm/plugin/scanner/ui/a;->ecu:Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;

    invoke-static {v0, v3}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->b(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;Z)Z

    .line 199
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/b;->ecw:Lcom/tencent/mm/plugin/scanner/ui/a;

    iget-object v0, v0, Lcom/tencent/mm/plugin/scanner/ui/a;->ecu:Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->aad()V

    goto :goto_1
.end method
