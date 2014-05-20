.class public final Lcom/tencent/mm/ui/base/x;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface;


# instance fields
.field private fcA:Landroid/widget/Button;

.field private fcB:Z

.field private fcz:Landroid/widget/Button;

.field private gyA:Landroid/widget/LinearLayout;

.field private gyB:Landroid/widget/TextView;

.field private gyC:Landroid/widget/TextView;

.field private gyD:Landroid/widget/TextView;

.field private gyE:Landroid/widget/ImageView;

.field private gyF:Landroid/widget/ImageView;

.field private gyG:Landroid/view/View;

.field private gyH:Landroid/widget/LinearLayout;

.field private gyI:Landroid/view/ViewGroup;

.field private gyJ:Landroid/view/ViewGroup;

.field private gyK:Landroid/view/View;

.field private gyL:Landroid/view/View;

.field private hR:Landroid/view/View;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 49
    sget v0, Lcom/tencent/mm/o;->bIN:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 50
    iput-object p1, p0, Lcom/tencent/mm/ui/base/x;->mContext:Landroid/content/Context;

    .line 51
    iget-object v0, p0, Lcom/tencent/mm/ui/base/x;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/tencent/mm/ui/base/x;->mContext:Landroid/content/Context;

    sget v1, Lcom/tencent/mm/k;->aWp:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/ui/base/x;->gyA:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/tencent/mm/ui/base/x;->gyA:Landroid/widget/LinearLayout;

    sget v1, Lcom/tencent/mm/i;->aBn:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/base/x;->fcz:Landroid/widget/Button;

    iget-object v0, p0, Lcom/tencent/mm/ui/base/x;->gyA:Landroid/widget/LinearLayout;

    sget v1, Lcom/tencent/mm/i;->aBh:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/base/x;->fcA:Landroid/widget/Button;

    iget-object v0, p0, Lcom/tencent/mm/ui/base/x;->gyA:Landroid/widget/LinearLayout;

    sget v1, Lcom/tencent/mm/i;->aBf:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/base/x;->gyL:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/mm/ui/base/x;->gyA:Landroid/widget/LinearLayout;

    sget v1, Lcom/tencent/mm/i;->aBo:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/base/x;->gyB:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/mm/ui/base/x;->gyA:Landroid/widget/LinearLayout;

    sget v1, Lcom/tencent/mm/i;->aBm:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/base/x;->gyC:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/mm/ui/base/x;->gyA:Landroid/widget/LinearLayout;

    sget v1, Lcom/tencent/mm/i;->aBk:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/base/x;->gyD:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/mm/ui/base/x;->gyA:Landroid/widget/LinearLayout;

    sget v1, Lcom/tencent/mm/i;->aBq:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/base/x;->gyE:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/mm/ui/base/x;->gyA:Landroid/widget/LinearLayout;

    sget v1, Lcom/tencent/mm/i;->aBl:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/base/x;->gyF:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/mm/ui/base/x;->gyA:Landroid/widget/LinearLayout;

    sget v1, Lcom/tencent/mm/i;->aBp:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/base/x;->gyG:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/mm/ui/base/x;->gyA:Landroid/widget/LinearLayout;

    sget v1, Lcom/tencent/mm/i;->aBj:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/ui/base/x;->gyH:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/tencent/mm/ui/base/x;->gyA:Landroid/widget/LinearLayout;

    sget v1, Lcom/tencent/mm/i;->aBe:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/tencent/mm/ui/base/x;->gyI:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/tencent/mm/ui/base/x;->gyA:Landroid/widget/LinearLayout;

    sget v1, Lcom/tencent/mm/i;->aBg:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/base/x;->gyK:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/mm/ui/base/x;->gyA:Landroid/widget/LinearLayout;

    sget v1, Lcom/tencent/mm/i;->aBi:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/tencent/mm/ui/base/x;->gyJ:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/base/x;->setCanceledOnTouchOutside(Z)V

    .line 52
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/ui/base/a;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x3

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 328
    iget-object v0, p1, Lcom/tencent/mm/ui/base/a;->title:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/tencent/mm/ui/base/a;->title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 329
    iget-object v0, p1, Lcom/tencent/mm/ui/base/a;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/base/x;->setTitle(Ljava/lang/CharSequence;)V

    .line 331
    :cond_0
    iget-object v0, p1, Lcom/tencent/mm/ui/base/a;->gxR:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 332
    iget-object v0, p1, Lcom/tencent/mm/ui/base/a;->gxR:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/tencent/mm/ui/base/x;->gyG:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/mm/ui/base/x;->gyE:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/mm/ui/base/x;->gyE:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 334
    :cond_1
    iget-object v0, p1, Lcom/tencent/mm/ui/base/a;->fox:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 335
    iget-object v0, p1, Lcom/tencent/mm/ui/base/a;->fox:Landroid/view/View;

    iput-object v0, p0, Lcom/tencent/mm/ui/base/x;->hR:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/mm/ui/base/x;->hR:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/base/x;->gyH:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/base/x;->gyJ:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/base/x;->gyJ:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/tencent/mm/ui/base/x;->gyJ:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/tencent/mm/ui/base/x;->hR:Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    :cond_2
    :goto_0
    iget-object v0, p1, Lcom/tencent/mm/ui/base/a;->gyb:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 348
    iget-object v0, p1, Lcom/tencent/mm/ui/base/a;->gyd:Landroid/view/ViewGroup$LayoutParams;

    if-nez v0, :cond_d

    .line 349
    iget-object v0, p1, Lcom/tencent/mm/ui/base/a;->gyb:Landroid/view/View;

    iget-object v1, p0, Lcom/tencent/mm/ui/base/x;->gyK:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/mm/ui/base/x;->gyI:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 354
    :cond_3
    :goto_1
    iget-object v0, p1, Lcom/tencent/mm/ui/base/a;->gxV:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/tencent/mm/ui/base/a;->gxV:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 355
    iget-object v0, p1, Lcom/tencent/mm/ui/base/a;->gxV:Ljava/lang/CharSequence;

    iget-boolean v1, p1, Lcom/tencent/mm/ui/base/a;->gye:Z

    iget-object v2, p1, Lcom/tencent/mm/ui/base/a;->gxX:Landroid/content/DialogInterface$OnClickListener;

    iget-object v3, p0, Lcom/tencent/mm/ui/base/x;->fcz:Landroid/widget/Button;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/tencent/mm/ui/base/x;->fcz:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v3, p0, Lcom/tencent/mm/ui/base/x;->fcz:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/base/x;->fcz:Landroid/widget/Button;

    new-instance v3, Lcom/tencent/mm/ui/base/y;

    invoke-direct {v3, p0, v2, v1}, Lcom/tencent/mm/ui/base/y;-><init>(Lcom/tencent/mm/ui/base/x;Landroid/content/DialogInterface$OnClickListener;Z)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    :cond_4
    iget-object v0, p1, Lcom/tencent/mm/ui/base/a;->gxW:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/tencent/mm/ui/base/a;->gxW:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 358
    iget-object v0, p1, Lcom/tencent/mm/ui/base/a;->gxW:Ljava/lang/CharSequence;

    iget-object v1, p1, Lcom/tencent/mm/ui/base/a;->gxY:Landroid/content/DialogInterface$OnClickListener;

    iget-object v2, p0, Lcom/tencent/mm/ui/base/x;->fcA:Landroid/widget/Button;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/tencent/mm/ui/base/x;->fcA:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, p0, Lcom/tencent/mm/ui/base/x;->fcA:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/base/x;->fcA:Landroid/widget/Button;

    new-instance v2, Lcom/tencent/mm/ui/base/z;

    invoke-direct {v2, p0, v1}, Lcom/tencent/mm/ui/base/z;-><init>(Lcom/tencent/mm/ui/base/x;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    :cond_5
    iget-object v0, p1, Lcom/tencent/mm/ui/base/a;->gxV:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/tencent/mm/ui/base/a;->gxV:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/tencent/mm/ui/base/a;->gxW:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/tencent/mm/ui/base/a;->gxW:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_e

    .line 363
    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/ui/base/x;->gyL:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 368
    :goto_2
    iget-object v0, p1, Lcom/tencent/mm/ui/base/a;->gxZ:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_7

    .line 369
    iget-object v0, p1, Lcom/tencent/mm/ui/base/a;->gxZ:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/base/x;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 371
    :cond_7
    iget-object v0, p1, Lcom/tencent/mm/ui/base/a;->gya:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_8

    .line 372
    iget-object v0, p1, Lcom/tencent/mm/ui/base/a;->gya:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/base/x;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 374
    :cond_8
    iget v0, p1, Lcom/tencent/mm/ui/base/a;->gyc:I

    if-lez v0, :cond_9

    .line 375
    iget v0, p1, Lcom/tencent/mm/ui/base/a;->gyc:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/base/x;->mQ(I)V

    .line 377
    :cond_9
    iget-boolean v0, p1, Lcom/tencent/mm/ui/base/a;->fcB:Z

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/base/x;->setCancelable(Z)V

    .line 378
    iget-boolean v0, p1, Lcom/tencent/mm/ui/base/a;->fcB:Z

    iput-boolean v0, p0, Lcom/tencent/mm/ui/base/x;->fcB:Z

    .line 380
    return-void

    .line 337
    :cond_a
    iget-object v0, p1, Lcom/tencent/mm/ui/base/a;->gxS:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 338
    iget-object v0, p1, Lcom/tencent/mm/ui/base/a;->gxS:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/tencent/mm/ui/base/x;->hR:Landroid/view/View;

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/tencent/mm/ui/base/x;->gyH:Landroid/widget/LinearLayout;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v1, p0, Lcom/tencent/mm/ui/base/x;->gyD:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/tencent/mm/ui/base/x;->gyC:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/tencent/mm/ui/base/x;->gyB:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/tencent/mm/ui/base/x;->gyH:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/mm/ui/base/x;->gyF:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/mm/ui/base/x;->gyF:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 340
    :cond_b
    iget-object v0, p1, Lcom/tencent/mm/ui/base/a;->gxT:Ljava/lang/CharSequence;

    if-eqz v0, :cond_c

    iget-object v0, p1, Lcom/tencent/mm/ui/base/a;->gxT:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_c

    .line 341
    iget-object v0, p1, Lcom/tencent/mm/ui/base/a;->gxT:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/base/x;->setMessage(Ljava/lang/CharSequence;)V

    .line 343
    :cond_c
    iget-object v0, p1, Lcom/tencent/mm/ui/base/a;->gxU:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/tencent/mm/ui/base/a;->gxU:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 344
    iget-object v0, p1, Lcom/tencent/mm/ui/base/a;->gxU:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/tencent/mm/ui/base/x;->hR:Landroid/view/View;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/tencent/mm/ui/base/x;->gyH:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/mm/ui/base/x;->gyD:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/mm/ui/base/x;->gyD:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 351
    :cond_d
    iget-object v0, p1, Lcom/tencent/mm/ui/base/a;->gyb:Landroid/view/View;

    iget-object v1, p1, Lcom/tencent/mm/ui/base/a;->gyd:Landroid/view/ViewGroup$LayoutParams;

    iget-object v2, p0, Lcom/tencent/mm/ui/base/x;->gyK:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/tencent/mm/ui/base/x;->gyI:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 365
    :cond_e
    iget-object v0, p0, Lcom/tencent/mm/ui/base/x;->gyL:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method public final aGF()V
    .locals 4

    .prologue
    .line 131
    iget-object v0, p0, Lcom/tencent/mm/ui/base/x;->gyD:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/tencent/mm/ui/base/x;->gyD:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/mm/ui/base/x;->gyD:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/mm/ui/base/x;->gyD:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/base/x;->gyD:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/base/x;->gyD:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/ao/b;->c(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/base/x;->gyC:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/tencent/mm/ui/base/x;->gyC:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/mm/ui/base/x;->gyC:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/mm/ui/base/x;->gyC:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/base/x;->gyC:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/base/x;->gyC:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/ao/b;->c(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    :cond_1
    return-void
.end method

.method public final aGG()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/tencent/mm/ui/base/x;->hR:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/base/x;->gyD:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/tencent/mm/ui/base/x;->gyD:Landroid/widget/TextView;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public final aGH()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 267
    iget-object v0, p0, Lcom/tencent/mm/ui/base/x;->fcA:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/tencent/mm/ui/base/x;->gyL:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 293
    return-void
.end method

.method public final dismiss()V
    .locals 4

    .prologue
    .line 385
    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    :goto_0
    return-void

    .line 386
    :catch_0
    move-exception v0

    .line 387
    const-string v1, "MicroMsg.MMAlertDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dismiss exception, e = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final getButton(I)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 307
    packed-switch p1, :pswitch_data_0

    .line 313
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 309
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/ui/base/x;->fcz:Landroid/widget/Button;

    goto :goto_0

    .line 311
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/mm/ui/base/x;->fcA:Landroid/widget/Button;

    goto :goto_0

    .line 307
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final mQ(I)V
    .locals 2
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/tencent/mm/ui/base/x;->hR:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/base/x;->gyD:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/tencent/mm/ui/base/x;->gyD:Landroid/widget/TextView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 57
    iget-object v0, p0, Lcom/tencent/mm/ui/base/x;->gyA:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/base/x;->setContentView(Landroid/view/View;)V

    .line 58
    return-void
.end method

.method public final setCancelable(Z)V
    .locals 1
    .parameter

    .prologue
    .line 301
    invoke-super {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 302
    iput-boolean p1, p0, Lcom/tencent/mm/ui/base/x;->fcB:Z

    .line 303
    iget-boolean v0, p0, Lcom/tencent/mm/ui/base/x;->fcB:Z

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/base/x;->setCanceledOnTouchOutside(Z)V

    .line 304
    return-void
.end method

.method public final setMessage(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 95
    iget-object v0, p0, Lcom/tencent/mm/ui/base/x;->hR:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/base/x;->gyH:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/tencent/mm/ui/base/x;->gyC:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/tencent/mm/ui/base/x;->gyC:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final setTitle(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 89
    iget-object v0, p0, Lcom/tencent/mm/ui/base/x;->gyG:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/tencent/mm/ui/base/x;->gyB:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/tencent/mm/ui/base/x;->gyB:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 92
    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 82
    iget-object v0, p0, Lcom/tencent/mm/ui/base/x;->gyG:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/tencent/mm/ui/base/x;->gyB:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/tencent/mm/ui/base/x;->gyB:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    return-void
.end method
