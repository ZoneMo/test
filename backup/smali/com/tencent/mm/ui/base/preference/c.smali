.class final Lcom/tencent/mm/ui/base/preference/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field id:I

.field text:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p1, p0, Lcom/tencent/mm/ui/base/preference/c;->text:Ljava/lang/CharSequence;

    .line 167
    iput p2, p0, Lcom/tencent/mm/ui/base/preference/c;->id:I

    .line 168
    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/RadioButton;)V
    .locals 1
    .parameter

    .prologue
    .line 171
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/c;->text:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget v0, p0, Lcom/tencent/mm/ui/base/preference/c;->id:I

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setId(I)V

    .line 173
    return-void
.end method
