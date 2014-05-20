.class final Lcom/tencent/mm/ui/account/mobile/bo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/account/mobile/g;


# instance fields
.field final synthetic gwB:Lcom/tencent/mm/ui/account/mobile/bn;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/account/mobile/bn;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/tencent/mm/ui/account/mobile/bo;->gwB:Lcom/tencent/mm/ui/account/mobile/bn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/ProgressDialog;)V
    .locals 1
    .parameter

    .prologue
    .line 202
    iget-object v0, p0, Lcom/tencent/mm/ui/account/mobile/bo;->gwB:Lcom/tencent/mm/ui/account/mobile/bn;

    iget-object v0, v0, Lcom/tencent/mm/ui/account/mobile/bn;->gwx:Lcom/tencent/mm/ui/account/mobile/MobileLoginOrForceReg;

    iput-object p1, v0, Lcom/tencent/mm/ui/account/mobile/MobileLoginOrForceReg;->cIr:Landroid/app/ProgressDialog;

    .line 204
    return-void
.end method
