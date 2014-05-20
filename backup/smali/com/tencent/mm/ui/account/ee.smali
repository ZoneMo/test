.class final Lcom/tencent/mm/ui/account/ee;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)V
    .locals 0
    .parameter

    .prologue
    .line 723
    iput-object p1, p0, Lcom/tencent/mm/ui/account/ee;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 727
    iget-object v0, p0, Lcom/tencent/mm/ui/account/ee;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->finish()V

    .line 728
    return-void
.end method
