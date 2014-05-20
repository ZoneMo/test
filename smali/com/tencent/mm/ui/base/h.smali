.class public final Lcom/tencent/mm/ui/base/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/tencent/mm/ui/base/w;)Lcom/tencent/mm/ui/base/ar;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 659
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZLcom/tencent/mm/ui/base/w;)Lcom/tencent/mm/ui/base/ar;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/tencent/mm/ui/base/w;)Lcom/tencent/mm/ui/base/ar;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 648
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZLcom/tencent/mm/ui/base/w;)Lcom/tencent/mm/ui/base/ar;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZLcom/tencent/mm/ui/base/w;)Lcom/tencent/mm/ui/base/ar;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 676
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {p4}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 744
    :goto_0
    return-object v0

    .line 680
    :cond_1
    if-nez p2, :cond_2

    .line 681
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 684
    :cond_2
    if-eqz p5, :cond_3

    .line 686
    new-instance v1, Lcom/tencent/mm/ui/tools/dg;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/tools/dg;-><init>(Landroid/content/Context;)V

    .line 687
    new-instance v2, Lcom/tencent/mm/ui/base/s;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/tencent/mm/ui/base/s;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/tools/dg;->a(Lcom/tencent/mm/ui/base/cc;)V

    .line 702
    new-instance v2, Lcom/tencent/mm/ui/base/t;

    invoke-direct {v2, p6}, Lcom/tencent/mm/ui/base/t;-><init>(Lcom/tencent/mm/ui/base/w;)V

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/tools/dg;->b(Lcom/tencent/mm/ui/base/cd;)V

    .line 711
    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/tools/dg;->c(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 712
    invoke-virtual {v1}, Lcom/tencent/mm/ui/tools/dg;->aNy()Lcom/tencent/mm/ui/base/ar;

    move-result-object v0

    .line 713
    invoke-static {p0, v0}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Landroid/app/Dialog;)V

    goto :goto_0

    .line 717
    :cond_3
    new-instance v1, Lcom/tencent/mm/ui/tools/dl;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/tools/dl;-><init>(Landroid/content/Context;)V

    .line 718
    new-instance v2, Lcom/tencent/mm/ui/base/u;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/tencent/mm/ui/base/u;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/tools/dl;->a(Lcom/tencent/mm/ui/base/cc;)V

    .line 733
    new-instance v2, Lcom/tencent/mm/ui/base/j;

    invoke-direct {v2, p6}, Lcom/tencent/mm/ui/base/j;-><init>(Lcom/tencent/mm/ui/base/w;)V

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/tools/dl;->b(Lcom/tencent/mm/ui/base/cd;)V

    .line 742
    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/tools/dl;->c(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 743
    invoke-virtual {v1}, Lcom/tencent/mm/ui/tools/dl;->cB()Z

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/base/v;)Lcom/tencent/mm/ui/base/ar;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 750
    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v6}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLcom/tencent/mm/ui/base/v;Landroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ar;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/base/v;Landroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ar;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 772
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLcom/tencent/mm/ui/base/v;Landroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ar;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLcom/tencent/mm/ui/base/v;Landroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ar;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 798
    if-eqz p2, :cond_0

    array-length v1, p2

    if-nez v1, :cond_1

    :cond_0
    invoke-static {p3}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 865
    :goto_0
    return-object v0

    .line 802
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 803
    if-eqz p2, :cond_2

    array-length v2, p2

    if-lez v2, :cond_2

    .line 804
    invoke-static {v1, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 807
    :cond_2
    invoke-static {p3}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 808
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 811
    :cond_3
    if-eqz p4, :cond_4

    .line 812
    new-instance v0, Lcom/tencent/mm/ui/tools/dg;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/tools/dg;-><init>(Landroid/content/Context;)V

    .line 817
    new-instance v2, Lcom/tencent/mm/ui/base/k;

    invoke-direct {v2, p1, v1}, Lcom/tencent/mm/ui/base/k;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/tools/dg;->a(Lcom/tencent/mm/ui/base/cc;)V

    .line 827
    new-instance v1, Lcom/tencent/mm/ui/base/l;

    invoke-direct {v1, p5}, Lcom/tencent/mm/ui/base/l;-><init>(Lcom/tencent/mm/ui/base/v;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/dg;->b(Lcom/tencent/mm/ui/base/cd;)V

    .line 836
    invoke-virtual {v0, p6}, Lcom/tencent/mm/ui/tools/dg;->c(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 837
    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/dg;->aNy()Lcom/tencent/mm/ui/base/ar;

    move-result-object v0

    .line 838
    invoke-static {p0, v0}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Landroid/app/Dialog;)V

    goto :goto_0

    .line 843
    :cond_4
    new-instance v2, Lcom/tencent/mm/ui/tools/dl;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/tools/dl;-><init>(Landroid/content/Context;)V

    .line 844
    new-instance v3, Lcom/tencent/mm/ui/base/m;

    invoke-direct {v3, p1, v1}, Lcom/tencent/mm/ui/base/m;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/tools/dl;->a(Lcom/tencent/mm/ui/base/cc;)V

    .line 854
    new-instance v1, Lcom/tencent/mm/ui/base/n;

    invoke-direct {v1, p5}, Lcom/tencent/mm/ui/base/n;-><init>(Lcom/tencent/mm/ui/base/v;)V

    invoke-virtual {v2, v1}, Lcom/tencent/mm/ui/tools/dl;->b(Lcom/tencent/mm/ui/base/cd;)V

    .line 863
    invoke-virtual {v2, p6}, Lcom/tencent/mm/ui/tools/dl;->c(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 864
    invoke-virtual {v2}, Lcom/tencent/mm/ui/tools/dl;->cB()Z

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;ILjava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 580
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/ui/base/ej;->a(Landroid/content/Context;ZLandroid/content/Intent;)V

    .line 582
    new-instance v0, Lcom/tencent/mm/ui/base/q;

    invoke-direct {v0, p4, p0}, Lcom/tencent/mm/ui/base/q;-><init>(Landroid/content/DialogInterface$OnCancelListener;Landroid/content/Context;)V

    invoke-static {p0, p2, p3, p1, v0}, Lcom/tencent/mm/ui/base/ch;->b(Landroid/content/Context;Ljava/lang/CharSequence;ZILandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    .line 592
    invoke-static {p0, v0}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Landroid/app/Dialog;)V

    .line 593
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 544
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;ILjava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;IIIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 283
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    const/4 v0, 0x0

    .line 307
    :goto_0
    return-object v0

    .line 287
    :cond_0
    new-instance v0, Lcom/tencent/mm/ui/base/aa;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/base/aa;-><init>(Landroid/content/Context;)V

    .line 288
    if-eqz p2, :cond_1

    .line 289
    invoke-virtual {v0, p2}, Lcom/tencent/mm/ui/base/aa;->mR(I)Lcom/tencent/mm/ui/base/aa;

    .line 291
    :cond_1
    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/base/aa;->mS(I)Lcom/tencent/mm/ui/base/aa;

    .line 292
    invoke-virtual {v0, p3, p5}, Lcom/tencent/mm/ui/base/aa;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/aa;

    .line 293
    invoke-virtual {v0, p4, p6}, Lcom/tencent/mm/ui/base/aa;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/aa;

    .line 294
    new-instance v1, Lcom/tencent/mm/ui/base/o;

    invoke-direct {v1, p6}, Lcom/tencent/mm/ui/base/o;-><init>(Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/aa;->a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/aa;

    .line 303
    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/aa;->aGI()Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    .line 304
    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/x;->show()V

    .line 306
    invoke-static {p0, v0}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Landroid/app/Dialog;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 137
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0, p3}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;IIZLandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 275
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, p3, p4}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;IIZLandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 141
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const/4 v0, 0x0

    .line 156
    :goto_0
    return-object v0

    .line 145
    :cond_0
    new-instance v0, Lcom/tencent/mm/ui/base/aa;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/base/aa;-><init>(Landroid/content/Context;)V

    .line 146
    if-lez p2, :cond_1

    .line 147
    invoke-virtual {v0, p2}, Lcom/tencent/mm/ui/base/aa;->mR(I)Lcom/tencent/mm/ui/base/aa;

    .line 149
    :cond_1
    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/base/aa;->mS(I)Lcom/tencent/mm/ui/base/aa;

    .line 150
    sget v1, Lcom/tencent/mm/n;->bee:I

    invoke-virtual {v0, v1, p4}, Lcom/tencent/mm/ui/base/aa;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/aa;

    .line 151
    invoke-virtual {v0, p3}, Lcom/tencent/mm/ui/base/aa;->dp(Z)Lcom/tencent/mm/ui/base/aa;

    .line 152
    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/aa;->aGI()Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/x;->show()V

    .line 155
    invoke-static {p0, v0}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Landroid/app/Dialog;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 257
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 271
    :goto_0
    return-object v0

    .line 261
    :cond_0
    new-instance v0, Lcom/tencent/mm/ui/base/aa;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/base/aa;-><init>(Landroid/content/Context;)V

    .line 262
    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/aa;->wf(Ljava/lang/String;)Lcom/tencent/mm/ui/base/aa;

    .line 263
    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/aa;->wg(Ljava/lang/String;)Lcom/tencent/mm/ui/base/aa;

    .line 264
    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/base/aa;->wh(Ljava/lang/String;)Lcom/tencent/mm/ui/base/aa;

    .line 265
    invoke-virtual {v0, p2}, Lcom/tencent/mm/ui/base/aa;->f(Landroid/graphics/drawable/Drawable;)Lcom/tencent/mm/ui/base/aa;

    .line 266
    sget v1, Lcom/tencent/mm/n;->bee:I

    invoke-virtual {v0, v1, p3}, Lcom/tencent/mm/ui/base/aa;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/aa;

    .line 267
    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/aa;->aGI()Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    .line 268
    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/x;->show()V

    .line 270
    invoke-static {p0, v0}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Landroid/app/Dialog;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 349
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    const/4 v0, 0x0

    .line 361
    :goto_0
    return-object v0

    .line 353
    :cond_0
    new-instance v0, Lcom/tencent/mm/ui/base/aa;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/base/aa;-><init>(Landroid/content/Context;)V

    .line 354
    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/base/aa;->wf(Ljava/lang/String;)Lcom/tencent/mm/ui/base/aa;

    .line 355
    invoke-virtual {v0, p2}, Lcom/tencent/mm/ui/base/aa;->ai(Landroid/view/View;)Lcom/tencent/mm/ui/base/aa;

    .line 356
    sget v1, Lcom/tencent/mm/n;->bee:I

    invoke-virtual {v0, v1, p3}, Lcom/tencent/mm/ui/base/aa;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/aa;

    .line 357
    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/aa;->aGI()Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    .line 358
    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/x;->show()V

    .line 360
    invoke-static {p0, v0}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Landroid/app/Dialog;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 405
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 428
    :goto_0
    return-object v0

    .line 409
    :cond_0
    new-instance v0, Lcom/tencent/mm/ui/base/aa;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/base/aa;-><init>(Landroid/content/Context;)V

    .line 410
    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/base/aa;->wf(Ljava/lang/String;)Lcom/tencent/mm/ui/base/aa;

    .line 411
    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/aa;->wg(Ljava/lang/String;)Lcom/tencent/mm/ui/base/aa;

    .line 412
    invoke-virtual {v0, p2}, Lcom/tencent/mm/ui/base/aa;->ai(Landroid/view/View;)Lcom/tencent/mm/ui/base/aa;

    .line 413
    sget v1, Lcom/tencent/mm/n;->bee:I

    invoke-virtual {v0, v1, p3}, Lcom/tencent/mm/ui/base/aa;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/aa;

    .line 414
    sget v1, Lcom/tencent/mm/n;->bds:I

    invoke-virtual {v0, v1, p4}, Lcom/tencent/mm/ui/base/aa;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/aa;

    .line 415
    new-instance v1, Lcom/tencent/mm/ui/base/p;

    invoke-direct {v1, p4}, Lcom/tencent/mm/ui/base/p;-><init>(Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/aa;->a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/aa;

    .line 424
    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/aa;->aGI()Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    .line 425
    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/x;->show()V

    .line 427
    invoke-static {p0, v0}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Landroid/app/Dialog;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 366
    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 160
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0, p3}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/x;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 491
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    const/4 v0, 0x0

    .line 504
    :goto_0
    return-object v0

    .line 495
    :cond_0
    new-instance v0, Lcom/tencent/mm/ui/base/aa;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/base/aa;-><init>(Landroid/content/Context;)V

    .line 496
    invoke-virtual {v0, p2}, Lcom/tencent/mm/ui/base/aa;->wf(Ljava/lang/String;)Lcom/tencent/mm/ui/base/aa;

    .line 497
    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/base/aa;->wg(Ljava/lang/String;)Lcom/tencent/mm/ui/base/aa;

    .line 498
    sget v1, Lcom/tencent/mm/n;->bee:I

    invoke-virtual {v0, v1, p3}, Lcom/tencent/mm/ui/base/aa;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/aa;

    .line 499
    invoke-virtual {v0, p4}, Lcom/tencent/mm/ui/base/aa;->a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/aa;

    .line 500
    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/aa;->aGI()Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    .line 501
    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/x;->show()V

    .line 503
    invoke-static {p0, v0}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Landroid/app/Dialog;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 202
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    const/4 v0, 0x0

    .line 215
    :goto_0
    return-object v0

    .line 206
    :cond_0
    new-instance v0, Lcom/tencent/mm/ui/base/aa;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/base/aa;-><init>(Landroid/content/Context;)V

    .line 207
    invoke-virtual {v0, p2}, Lcom/tencent/mm/ui/base/aa;->wf(Ljava/lang/String;)Lcom/tencent/mm/ui/base/aa;

    .line 208
    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/base/aa;->wg(Ljava/lang/String;)Lcom/tencent/mm/ui/base/aa;

    .line 209
    sget v1, Lcom/tencent/mm/n;->bee:I

    invoke-virtual {v0, v1, p3}, Lcom/tencent/mm/ui/base/aa;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/aa;

    .line 210
    sget v1, Lcom/tencent/mm/n;->bds:I

    invoke-virtual {v0, v1, p4}, Lcom/tencent/mm/ui/base/aa;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/aa;

    .line 211
    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/aa;->aGI()Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/x;->show()V

    .line 214
    invoke-static {p0, v0}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Landroid/app/Dialog;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 389
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    const/4 v0, 0x0

    .line 401
    :goto_0
    return-object v0

    .line 393
    :cond_0
    new-instance v0, Lcom/tencent/mm/ui/base/aa;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/base/aa;-><init>(Landroid/content/Context;)V

    .line 394
    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/base/aa;->wf(Ljava/lang/String;)Lcom/tencent/mm/ui/base/aa;

    .line 395
    invoke-virtual {v0, p3}, Lcom/tencent/mm/ui/base/aa;->ai(Landroid/view/View;)Lcom/tencent/mm/ui/base/aa;

    .line 396
    invoke-virtual {v0, p2, p4}, Lcom/tencent/mm/ui/base/aa;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/aa;

    .line 397
    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/aa;->aGI()Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    .line 398
    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/x;->show()V

    .line 400
    invoke-static {p0, v0}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Landroid/app/Dialog;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 623
    sget v0, Lcom/tencent/mm/k;->bbY:I

    invoke-static {p0, v0, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 624
    invoke-static/range {v0 .. v6}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    move-result-object v1

    .line 625
    new-instance v0, Lcom/tencent/mm/ui/base/r;

    invoke-direct {v0}, Lcom/tencent/mm/ui/base/r;-><init>()V

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/base/x;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 635
    sget v0, Lcom/tencent/mm/i;->awP:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 636
    invoke-virtual {v0, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 637
    invoke-static {p0, v1}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Landroid/app/Dialog;)V

    .line 642
    return-object v1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 312
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    const/4 v0, 0x0

    .line 325
    :goto_0
    return-object v0

    .line 316
    :cond_0
    new-instance v0, Lcom/tencent/mm/ui/base/aa;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/base/aa;-><init>(Landroid/content/Context;)V

    .line 317
    invoke-virtual {v0, p2}, Lcom/tencent/mm/ui/base/aa;->wf(Ljava/lang/String;)Lcom/tencent/mm/ui/base/aa;

    .line 318
    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/base/aa;->wg(Ljava/lang/String;)Lcom/tencent/mm/ui/base/aa;

    .line 319
    invoke-virtual {v0, p3, p5}, Lcom/tencent/mm/ui/base/aa;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/aa;

    .line 320
    invoke-virtual {v0, p4, p6}, Lcom/tencent/mm/ui/base/aa;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/aa;

    .line 321
    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/aa;->aGI()Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    .line 322
    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/x;->show()V

    .line 324
    invoke-static {p0, v0}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Landroid/app/Dialog;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 185
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    const/4 v0, 0x0

    .line 198
    :goto_0
    return-object v0

    .line 189
    :cond_0
    new-instance v0, Lcom/tencent/mm/ui/base/aa;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/base/aa;-><init>(Landroid/content/Context;)V

    .line 190
    invoke-virtual {v0, p2}, Lcom/tencent/mm/ui/base/aa;->wf(Ljava/lang/String;)Lcom/tencent/mm/ui/base/aa;

    .line 191
    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/base/aa;->wg(Ljava/lang/String;)Lcom/tencent/mm/ui/base/aa;

    .line 192
    invoke-virtual {v0, p3, p5}, Lcom/tencent/mm/ui/base/aa;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/aa;

    .line 193
    invoke-virtual {v0, p4}, Lcom/tencent/mm/ui/base/aa;->dp(Z)Lcom/tencent/mm/ui/base/aa;

    .line 194
    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/aa;->aGI()Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/x;->show()V

    .line 197
    invoke-static {p0, v0}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Landroid/app/Dialog;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 164
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    const/4 v0, 0x0

    .line 177
    :goto_0
    return-object v0

    .line 168
    :cond_0
    new-instance v0, Lcom/tencent/mm/ui/base/aa;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/base/aa;-><init>(Landroid/content/Context;)V

    .line 169
    invoke-virtual {v0, p2}, Lcom/tencent/mm/ui/base/aa;->wf(Ljava/lang/String;)Lcom/tencent/mm/ui/base/aa;

    .line 170
    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/base/aa;->wg(Ljava/lang/String;)Lcom/tencent/mm/ui/base/aa;

    .line 171
    sget v1, Lcom/tencent/mm/n;->bee:I

    invoke-virtual {v0, v1, p4}, Lcom/tencent/mm/ui/base/aa;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/aa;

    .line 172
    invoke-virtual {v0, p3}, Lcom/tencent/mm/ui/base/aa;->dp(Z)Lcom/tencent/mm/ui/base/aa;

    .line 173
    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/aa;->aGI()Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/x;->show()V

    .line 176
    invoke-static {p0, v0}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Landroid/app/Dialog;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 219
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    const/4 v0, 0x0

    .line 233
    :goto_0
    return-object v0

    .line 223
    :cond_0
    new-instance v0, Lcom/tencent/mm/ui/base/aa;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/base/aa;-><init>(Landroid/content/Context;)V

    .line 224
    invoke-virtual {v0, p2}, Lcom/tencent/mm/ui/base/aa;->wf(Ljava/lang/String;)Lcom/tencent/mm/ui/base/aa;

    .line 225
    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/base/aa;->wg(Ljava/lang/String;)Lcom/tencent/mm/ui/base/aa;

    .line 226
    sget v1, Lcom/tencent/mm/n;->bee:I

    invoke-virtual {v0, v1, p4}, Lcom/tencent/mm/ui/base/aa;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/aa;

    .line 227
    sget v1, Lcom/tencent/mm/n;->bds:I

    invoke-virtual {v0, v1, p5}, Lcom/tencent/mm/ui/base/aa;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/aa;

    .line 228
    invoke-virtual {v0, p3}, Lcom/tencent/mm/ui/base/aa;->dp(Z)Lcom/tencent/mm/ui/base/aa;

    .line 229
    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/aa;->aGI()Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/x;->show()V

    .line 232
    invoke-static {p0, v0}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Landroid/app/Dialog;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 371
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    const/4 v0, 0x0

    .line 385
    :goto_0
    return-object v0

    .line 375
    :cond_0
    new-instance v0, Lcom/tencent/mm/ui/base/aa;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/base/aa;-><init>(Landroid/content/Context;)V

    .line 376
    invoke-virtual {v0, p2}, Lcom/tencent/mm/ui/base/aa;->wf(Ljava/lang/String;)Lcom/tencent/mm/ui/base/aa;

    .line 377
    invoke-virtual {v0, p3}, Lcom/tencent/mm/ui/base/aa;->ai(Landroid/view/View;)Lcom/tencent/mm/ui/base/aa;

    .line 378
    invoke-virtual {v0, p4, p6}, Lcom/tencent/mm/ui/base/aa;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/aa;

    .line 379
    invoke-virtual {v0, p5, p7}, Lcom/tencent/mm/ui/base/aa;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/aa;

    .line 380
    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/base/aa;->dp(Z)Lcom/tencent/mm/ui/base/aa;

    .line 381
    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/aa;->aGI()Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    .line 382
    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/x;->show()V

    .line 384
    invoke-static {p0, v0}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Landroid/app/Dialog;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 330
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    const/4 v0, 0x0

    .line 344
    :goto_0
    return-object v0

    .line 334
    :cond_0
    new-instance v0, Lcom/tencent/mm/ui/base/aa;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/base/aa;-><init>(Landroid/content/Context;)V

    .line 335
    invoke-virtual {v0, p3}, Lcom/tencent/mm/ui/base/aa;->wf(Ljava/lang/String;)Lcom/tencent/mm/ui/base/aa;

    .line 336
    invoke-virtual {v0, p2}, Lcom/tencent/mm/ui/base/aa;->wg(Ljava/lang/String;)Lcom/tencent/mm/ui/base/aa;

    .line 337
    invoke-virtual {v0, p4, p6}, Lcom/tencent/mm/ui/base/aa;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/aa;

    .line 338
    invoke-virtual {v0, p5, p7}, Lcom/tencent/mm/ui/base/aa;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/aa;

    .line 339
    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/base/aa;->dp(Z)Lcom/tencent/mm/ui/base/aa;

    .line 340
    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/aa;->aGI()Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    .line 341
    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/x;->show()V

    .line 343
    invoke-static {p0, v0}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Landroid/app/Dialog;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/app/Dialog;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 60
    instance-of v0, p0, Lcom/tencent/mm/ui/MMActivity;

    if-eqz v0, :cond_0

    .line 61
    check-cast p0, Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->a(Landroid/app/Dialog;)V

    .line 63
    :cond_0
    return-void
.end method

.method public static an(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 91
    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/tencent/mm/ui/base/w;)Lcom/tencent/mm/ui/base/ar;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 654
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZLcom/tencent/mm/ui/base/w;)Lcom/tencent/mm/ui/base/ar;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/base/v;)Lcom/tencent/mm/ui/base/ar;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 761
    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v6}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLcom/tencent/mm/ui/base/v;Landroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ar;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 561
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1, p2}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;ILjava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 279
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/base/v;)Lcom/tencent/mm/ui/base/ar;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 767
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v6}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLcom/tencent/mm/ui/base/v;Landroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ar;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;II)Lcom/tencent/mm/ui/base/x;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/ui/base/h;->p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mm/ui/base/x;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 181
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    return-object v0
.end method

.method public static p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mm/ui/base/x;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/tencent/mm/ui/base/aa;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/base/aa;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/tencent/mm/ui/base/aa;->wf(Ljava/lang/String;)Lcom/tencent/mm/ui/base/aa;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/base/aa;->wg(Ljava/lang/String;)Lcom/tencent/mm/ui/base/aa;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/aa;->dp(Z)Lcom/tencent/mm/ui/base/aa;

    sget v1, Lcom/tencent/mm/n;->bee:I

    new-instance v2, Lcom/tencent/mm/ui/base/i;

    invoke-direct {v2}, Lcom/tencent/mm/ui/base/i;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/ui/base/aa;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/aa;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/aa;->aGI()Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/x;->show()V

    invoke-static {p0, v0}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Landroid/app/Dialog;)V

    goto :goto_0
.end method
