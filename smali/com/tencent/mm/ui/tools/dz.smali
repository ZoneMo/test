.class public final Lcom/tencent/mm/ui/tools/dz;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/app/Activity;Lcom/tencent/mm/platformtools/ab;)Landroid/widget/LinearLayout;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 16
    .line 17
    sget v0, Lcom/tencent/mm/k;->aVB:I

    invoke-static {p0, v0, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 18
    sget v1, Lcom/tencent/mm/i;->ayS:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 19
    sget v2, Lcom/tencent/mm/i;->ayT:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 21
    sget-object v4, Lcom/tencent/mm/ui/tools/ea;->ciV:[I

    iget-object v5, p1, Lcom/tencent/mm/platformtools/ab;->cGO:Lcom/tencent/mm/platformtools/f;

    invoke-virtual {v5}, Lcom/tencent/mm/platformtools/f;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    move-object p1, v3

    .line 47
    :goto_0
    if-eqz p1, :cond_0

    .line 48
    iget-object v1, p1, Lcom/tencent/mm/platformtools/ab;->cGR:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    :cond_0
    return-object v0

    .line 24
    :pswitch_0
    sget v3, Lcom/tencent/mm/h;->ajF:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 25
    sget v1, Lcom/tencent/mm/n;->bex:I

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 28
    :pswitch_1
    sget v3, Lcom/tencent/mm/h;->ajF:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 29
    sget v1, Lcom/tencent/mm/n;->bma:I

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 32
    :pswitch_2
    sget v3, Lcom/tencent/mm/h;->ajE:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 33
    sget v1, Lcom/tencent/mm/n;->bez:I

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 36
    :pswitch_3
    sget v3, Lcom/tencent/mm/h;->ajH:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 37
    sget v1, Lcom/tencent/mm/n;->bey:I

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 40
    :pswitch_4
    sget v3, Lcom/tencent/mm/h;->ajG:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 41
    sget v1, Lcom/tencent/mm/n;->bew:I

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 21
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
