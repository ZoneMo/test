.class final Lcom/tencent/mm/ui/base/de;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic gBS:I

.field final synthetic gBT:I

.field final synthetic gBU:Z

.field final synthetic gBV:Lcom/tencent/mm/ui/base/MMSuperAlert;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/base/MMSuperAlert;IIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/tencent/mm/ui/base/de;->gBV:Lcom/tencent/mm/ui/base/MMSuperAlert;

    iput p2, p0, Lcom/tencent/mm/ui/base/de;->gBS:I

    iput p3, p0, Lcom/tencent/mm/ui/base/de;->gBT:I

    iput-boolean p4, p0, Lcom/tencent/mm/ui/base/de;->gBU:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 31
    iget v0, p0, Lcom/tencent/mm/ui/base/de;->gBS:I

    if-nez v0, :cond_0

    const-string v1, ""

    .line 32
    :goto_0
    iget v0, p0, Lcom/tencent/mm/ui/base/de;->gBT:I

    if-nez v0, :cond_1

    const-string v2, ""

    .line 33
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/base/de;->gBV:Lcom/tencent/mm/ui/base/MMSuperAlert;

    iget-boolean v3, p0, Lcom/tencent/mm/ui/base/de;->gBU:Z

    new-instance v4, Lcom/tencent/mm/ui/base/df;

    invoke-direct {v4, p0}, Lcom/tencent/mm/ui/base/df;-><init>(Lcom/tencent/mm/ui/base/de;)V

    new-instance v5, Lcom/tencent/mm/ui/base/dg;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/base/dg;-><init>(Lcom/tencent/mm/ui/base/de;)V

    invoke-static/range {v0 .. v5}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    .line 46
    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/base/de;->gBV:Lcom/tencent/mm/ui/base/MMSuperAlert;

    iget v1, p0, Lcom/tencent/mm/ui/base/de;->gBS:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/MMSuperAlert;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/base/de;->gBV:Lcom/tencent/mm/ui/base/MMSuperAlert;

    iget v2, p0, Lcom/tencent/mm/ui/base/de;->gBT:I

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/MMSuperAlert;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method
