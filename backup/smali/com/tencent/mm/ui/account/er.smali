.class final Lcom/tencent/mm/ui/account/er;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/account/mobile/g;


# instance fields
.field final synthetic gsd:Lcom/tencent/mm/ui/account/eq;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/account/eq;)V
    .locals 0
    .parameter

    .prologue
    .line 970
    iput-object p1, p0, Lcom/tencent/mm/ui/account/er;->gsd:Lcom/tencent/mm/ui/account/eq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/ProgressDialog;)V
    .locals 1
    .parameter

    .prologue
    .line 974
    iget-object v0, p0, Lcom/tencent/mm/ui/account/er;->gsd:Lcom/tencent/mm/ui/account/eq;

    iget-object v0, v0, Lcom/tencent/mm/ui/account/eq;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-static {v0, p1}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->a(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 976
    return-void
.end method
