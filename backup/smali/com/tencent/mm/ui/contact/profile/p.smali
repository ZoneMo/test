.class final Lcom/tencent/mm/ui/contact/profile/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic gWe:Lcom/tencent/mm/ui/contact/profile/o;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/profile/o;)V
    .locals 0
    .parameter

    .prologue
    .line 553
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/profile/p;->gWe:Lcom/tencent/mm/ui/contact/profile/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 557
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/p;->gWe:Lcom/tencent/mm/ui/contact/profile/o;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/o;->gWd:Lcom/tencent/mm/ui/contact/profile/e;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/profile/e;->e(Lcom/tencent/mm/ui/contact/profile/e;)V

    .line 558
    return-void
.end method
