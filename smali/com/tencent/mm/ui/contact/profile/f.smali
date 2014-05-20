.class final Lcom/tencent/mm/ui/contact/profile/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic gWc:Lcom/tencent/mm/p/a;

.field final synthetic gWd:Lcom/tencent/mm/ui/contact/profile/e;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/profile/e;Lcom/tencent/mm/p/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/profile/f;->gWd:Lcom/tencent/mm/ui/contact/profile/e;

    iput-object p2, p0, Lcom/tencent/mm/ui/contact/profile/f;->gWc:Lcom/tencent/mm/p/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 197
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/f;->gWc:Lcom/tencent/mm/p/a;

    iput v2, v0, Lcom/tencent/mm/p/a;->field_hadAlert:I

    .line 198
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/f;->gWc:Lcom/tencent/mm/p/a;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/f;->gWc:Lcom/tencent/mm/p/a;

    iget v1, v1, Lcom/tencent/mm/p/a;->field_brandFlag:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lcom/tencent/mm/p/a;->field_brandFlag:I

    .line 199
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/f;->gWd:Lcom/tencent/mm/ui/contact/profile/e;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/f;->gWc:Lcom/tencent/mm/p/a;

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/contact/profile/e;->a(Lcom/tencent/mm/ui/contact/profile/e;Lcom/tencent/mm/p/a;Z)V

    .line 200
    return-void
.end method
