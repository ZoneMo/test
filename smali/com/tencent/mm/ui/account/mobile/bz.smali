.class final Lcom/tencent/mm/ui/account/mobile/bz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/account/mobile/g;


# instance fields
.field final synthetic gwF:Lcom/tencent/mm/ui/account/mobile/bw;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/account/mobile/bw;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/tencent/mm/ui/account/mobile/bz;->gwF:Lcom/tencent/mm/ui/account/mobile/bw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/ProgressDialog;)V
    .locals 1
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lcom/tencent/mm/ui/account/mobile/bz;->gwF:Lcom/tencent/mm/ui/account/mobile/bw;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/mobile/bw;->a(Lcom/tencent/mm/ui/account/mobile/bw;)Lcom/tencent/mm/ui/account/mobile/MobileVerifyUI;

    move-result-object v0

    iput-object p1, v0, Lcom/tencent/mm/ui/account/mobile/MobileVerifyUI;->cIr:Landroid/app/ProgressDialog;

    .line 157
    return-void
.end method
