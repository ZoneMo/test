.class final Lcom/tencent/mm/ui/bindgooglecontact/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic gHC:Lcom/tencent/mm/ui/bindgooglecontact/BindGoogleContactUI;

.field final synthetic gHD:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/bindgooglecontact/BindGoogleContactUI;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lcom/tencent/mm/ui/bindgooglecontact/h;->gHC:Lcom/tencent/mm/ui/bindgooglecontact/BindGoogleContactUI;

    iput-object p2, p0, Lcom/tencent/mm/ui/bindgooglecontact/h;->gHD:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 336
    iget-object v0, p0, Lcom/tencent/mm/ui/bindgooglecontact/h;->gHC:Lcom/tencent/mm/ui/bindgooglecontact/BindGoogleContactUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/bindgooglecontact/h;->gHD:Ljava/lang/String;

    sget v2, Lcom/tencent/mm/v/a;->csC:I

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/bindgooglecontact/BindGoogleContactUI;->a(Lcom/tencent/mm/ui/bindgooglecontact/BindGoogleContactUI;Ljava/lang/String;I)V

    .line 337
    return-void
.end method
