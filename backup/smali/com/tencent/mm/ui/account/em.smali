.class final Lcom/tencent/mm/ui/account/em;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/account/mobile/g;


# instance fields
.field final synthetic gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)V
    .locals 0
    .parameter

    .prologue
    .line 867
    iput-object p1, p0, Lcom/tencent/mm/ui/account/em;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/ProgressDialog;)V
    .locals 1
    .parameter

    .prologue
    .line 871
    iget-object v0, p0, Lcom/tencent/mm/ui/account/em;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-static {v0, p1}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->a(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 873
    return-void
.end method
