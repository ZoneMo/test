.class final Lcom/tencent/mm/ui/account/ij;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic gtp:Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;)V
    .locals 0
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/tencent/mm/ui/account/ij;->gtp:Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 261
    iget-object v0, p0, Lcom/tencent/mm/ui/account/ij;->gtp:Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;->finish()V

    .line 262
    return-void
.end method
