.class final Lcom/tencent/mm/ui/contact/profile/cg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic gXn:Lcom/tencent/mm/ui/contact/profile/ce;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/profile/ce;)V
    .locals 0
    .parameter

    .prologue
    .line 490
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/profile/cg;->gXn:Lcom/tencent/mm/ui/contact/profile/ce;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 493
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/cg;->gXn:Lcom/tencent/mm/ui/contact/profile/ce;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/ce;->gXm:Lcom/tencent/mm/ui/contact/profile/cc;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/cc;->gXl:Lcom/tencent/mm/ui/contact/profile/cb;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/profile/cb;->aLj()V

    .line 494
    return-void
.end method
