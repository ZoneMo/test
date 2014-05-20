.class final Lcom/tencent/mm/ui/contact/profile/cn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic gXr:Lcom/tencent/mm/ui/contact/profile/cm;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/profile/cm;)V
    .locals 0
    .parameter

    .prologue
    .line 593
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/profile/cn;->gXr:Lcom/tencent/mm/ui/contact/profile/cm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 597
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/cn;->gXr:Lcom/tencent/mm/ui/contact/profile/cm;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/cm;->gXq:Lcom/tencent/mm/ui/contact/profile/cl;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/cl;->gXl:Lcom/tencent/mm/ui/contact/profile/cb;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/profile/cb;->b(Lcom/tencent/mm/ui/contact/profile/cb;)V

    .line 598
    return-void
.end method
