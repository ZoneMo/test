.class public final Lcom/tencent/mm/plugin/backup/ui/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 42
    const v3, 0x7f0709d5

    const v4, 0x7f0709d6

    move-object v0, p0

    move v1, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;IIIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    .line 43
    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/x;->setCanceledOnTouchOutside(Z)V

    .line 45
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/x;->mQ(I)V

    .line 46
    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/x;->aGG()V

    .line 47
    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/x;->setCancelable(Z)V

    .line 48
    return-object v0
.end method
