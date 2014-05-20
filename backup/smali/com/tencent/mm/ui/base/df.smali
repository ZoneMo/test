.class final Lcom/tencent/mm/ui/base/df;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic gBW:Lcom/tencent/mm/ui/base/de;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/base/de;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/tencent/mm/ui/base/df;->gBW:Lcom/tencent/mm/ui/base/de;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tencent/mm/ui/base/df;->gBW:Lcom/tencent/mm/ui/base/de;

    iget-object v0, v0, Lcom/tencent/mm/ui/base/de;->gBV:Lcom/tencent/mm/ui/base/MMSuperAlert;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/MMSuperAlert;->finish()V

    .line 37
    return-void
.end method
